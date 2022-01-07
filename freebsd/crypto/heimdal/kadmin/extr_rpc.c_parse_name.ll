; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rpc.c_parse_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rpc.c_parse_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@.str = private unnamed_addr constant [3 x i8] c"\04\01\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_3__*, i8**)* @parse_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_name(i8* %0, i64 %1, %struct.TYPE_3__* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ult i64 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %146

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @memcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  br label %146

19:                                               ; preds = %14
  %20 = load i64, i64* %7, align 8
  %21 = sub i64 %20, 2
  store i64 %21, i64* %7, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 8
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %28, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %7, align 8
  %36 = sub i64 %35, 2
  store i64 %36, i64* %7, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8* %38, i8** %6, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ult i64 %39, 2
  br i1 %40, label %45, label %41

41:                                               ; preds = %19
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %19
  store i32 1, i32* %5, align 4
  br label %146

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp ne i32 %50, 6
  br i1 %51, label %60, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i64
  %57 = load i64, i64* %10, align 8
  %58 = sub i64 %57, 2
  %59 = icmp ne i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52, %46
  store i32 1, i32* %5, align 4
  br label %146

61:                                               ; preds = %52
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  store i8* %63, i8** %6, align 8
  %64 = load i64, i64* %10, align 8
  %65 = sub i64 %64, 2
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %7, align 8
  %67 = sub i64 %66, 2
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %84, label %73

73:                                               ; preds = %61
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i64 @memcmp(i8* %74, i8* %77, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73, %61
  store i32 1, i32* %5, align 4
  br label %146

85:                                               ; preds = %73
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %7, align 8
  %88 = sub i64 %87, %86
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 %89
  store i8* %91, i8** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp ult i64 %92, 4
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  store i32 1, i32* %5, align 4
  br label %146

95:                                               ; preds = %85
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = shl i32 %99, 24
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = shl i32 %104, 16
  %106 = or i32 %100, %105
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = shl i32 %110, 8
  %112 = or i32 %106, %111
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 3
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = or i32 %112, %116
  %118 = sext i32 %117 to i64
  store i64 %118, i64* %10, align 8
  %119 = load i64, i64* %7, align 8
  %120 = sub i64 %119, 4
  store i64 %120, i64* %7, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 4
  store i8* %122, i8** %6, align 8
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* %10, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %95
  store i32 1, i32* %5, align 4
  br label %146

127:                                              ; preds = %95
  %128 = load i64, i64* %10, align 8
  %129 = add i64 %128, 1
  %130 = call i8* @malloc(i64 %129)
  %131 = load i8**, i8*** %9, align 8
  store i8* %130, i8** %131, align 8
  %132 = load i8**, i8*** %9, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  %135 = zext i1 %134 to i32
  %136 = call i32 @INSIST(i32 %135)
  %137 = load i8**, i8*** %9, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = load i64, i64* %10, align 8
  %141 = call i32 @memcpy(i8* %138, i8* %139, i64 %140)
  %142 = load i8**, i8*** %9, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = load i64, i64* %10, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8 0, i8* %145, align 1
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %127, %126, %94, %84, %60, %45, %18, %13
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
