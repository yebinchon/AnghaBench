; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_derive_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_derive_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.kex* }
%struct.kex = type { %struct.TYPE_6__**, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.sshbuf = type { i32 }

@NKEYS = common dso_local global i32 0, align 4
@MODE_MAX = common dso_local global i32 0, align 4
@MODE_OUT = common dso_local global i32 0, align 4
@MODE_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kex_derive_keys(%struct.ssh* %0, i32* %1, i32 %2, %struct.sshbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sshbuf*, align 8
  %10 = alloca %struct.kex*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sshbuf* %3, %struct.sshbuf** %9, align 8
  %19 = load %struct.ssh*, %struct.ssh** %6, align 8
  %20 = getelementptr inbounds %struct.ssh, %struct.ssh* %19, i32 0, i32 0
  %21 = load %struct.kex*, %struct.kex** %20, align 8
  store %struct.kex* %21, %struct.kex** %10, align 8
  %22 = load i32, i32* @NKEYS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i32*, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %63, %4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @NKEYS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %26
  %31 = load %struct.ssh*, %struct.ssh** %6, align 8
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 65, %32
  %34 = trunc i32 %33 to i8
  %35 = load %struct.kex*, %struct.kex** %10, align 8
  %36 = getelementptr inbounds %struct.kex, %struct.kex* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %25, i64 %42
  %44 = call i32 @derive_key(%struct.ssh* %31, i8 signext %34, i32 %37, i32* %38, i32 %39, %struct.sshbuf* %40, i32** %43)
  store i32 %44, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %30
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %57, %46
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %25, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @free(i32* %55)
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %14, align 4
  br label %47

60:                                               ; preds = %47
  %61 = load i32, i32* %17, align 4
  store i32 %61, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %146

62:                                               ; preds = %30
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %26

66:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  br label %67

67:                                               ; preds = %142, %66
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @MODE_MAX, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %145

71:                                               ; preds = %67
  %72 = load %struct.kex*, %struct.kex** %10, align 8
  %73 = getelementptr inbounds %struct.kex, %struct.kex* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @MODE_OUT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %91, label %80

80:                                               ; preds = %76, %71
  %81 = load %struct.kex*, %struct.kex** %10, align 8
  %82 = getelementptr inbounds %struct.kex, %struct.kex* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* @MODE_IN, align 4
  %88 = icmp eq i32 %86, %87
  br label %89

89:                                               ; preds = %85, %80
  %90 = phi i1 [ false, %80 ], [ %88, %85 ]
  br label %91

91:                                               ; preds = %89, %76
  %92 = phi i1 [ true, %76 ], [ %90, %89 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 0, i32 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %25, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.kex*, %struct.kex** %10, align 8
  %102 = getelementptr inbounds %struct.kex, %struct.kex* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %102, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %103, i64 %105
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32* %100, i32** %109, align 8
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 2, i32 3
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %25, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.kex*, %struct.kex** %10, align 8
  %118 = getelementptr inbounds %struct.kex, %struct.kex* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %119, i64 %121
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i32* %116, i32** %125, align 8
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 4, i32 5
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %25, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.kex*, %struct.kex** %10, align 8
  %134 = getelementptr inbounds %struct.kex, %struct.kex* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %134, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %135, i64 %137
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i32* %132, i32** %141, align 8
  br label %142

142:                                              ; preds = %91
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %15, align 4
  br label %67

145:                                              ; preds = %67
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %146

146:                                              ; preds = %145, %60
  %147 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @derive_key(%struct.ssh*, i8 signext, i32, i32*, i32, %struct.sshbuf*, i32**) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
