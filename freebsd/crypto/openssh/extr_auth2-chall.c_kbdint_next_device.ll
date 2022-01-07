; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-chall.c_kbdint_next_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-chall.c_kbdint_next_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@devices = common dso_local global %struct.TYPE_6__** null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"keyboard-interactive\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"kbdint_next_device: devices %s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"<empty>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @kbdint_next_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbdint_next_device(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = call i32 @kbdint_reset_device(%struct.TYPE_5__* %13)
  br label %15

15:                                               ; preds = %12, %2
  br label %16

16:                                               ; preds = %138, %15
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strcspn(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %27

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i64 [ %25, %21 ], [ 0, %26 ]
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %140

32:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %89, %32
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @devices, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %34, i64 %36
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %92

40:                                               ; preds = %33
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %40
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @devices, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %50, i64 %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @auth2_method_allowed(i32* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %48, %40
  br label %89

60:                                               ; preds = %48
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @devices, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %64, i64 %66
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @strncmp(i8* %63, i32 %70, i64 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %60
  %75 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @devices, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %75, i64 %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = shl i32 1, %82
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %74, %60
  br label %89

89:                                               ; preds = %88, %59
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %33

92:                                               ; preds = %33
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %6, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %92
  %103 = load i8*, i8** %6, align 8
  %104 = load i64, i64* %5, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = call i8* @xstrdup(i8* %106)
  br label %109

108:                                              ; preds = %92
  br label %109

109:                                              ; preds = %108, %102
  %110 = phi i8* [ %107, %102 ], [ null, %108 ]
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %109
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  br label %124

123:                                              ; preds = %109
  br label %124

124:                                              ; preds = %123, %119
  %125 = phi i8* [ %122, %119 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %123 ]
  %126 = call i32 @debug2(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %124
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = icmp ne %struct.TYPE_6__* %135, null
  %137 = xor i1 %136, true
  br label %138

138:                                              ; preds = %132, %127
  %139 = phi i1 [ false, %127 ], [ %137, %132 ]
  br i1 %139, label %16, label %140

140:                                              ; preds = %138, %31
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = icmp ne %struct.TYPE_6__* %143, null
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 1, i32 0
  ret i32 %146
}

declare dso_local i32 @kbdint_reset_device(%struct.TYPE_5__*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @auth2_method_allowed(i32*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i32, i64) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @debug2(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
