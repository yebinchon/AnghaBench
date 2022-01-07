; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tube.c_tube_write_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tube.c_tube_write_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tube = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"tube msg write failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tube_write_msg(%struct.tube* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tube*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tube* %0, %struct.tube** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.tube*, %struct.tube** %6, align 8
  %14 = getelementptr inbounds %struct.tube, %struct.tube* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 (i32, ...) @write(i32 %19, i32* %8, i64 4)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EINTR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EAGAIN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23
  store i32 -1, i32* %5, align 4
  br label %111

32:                                               ; preds = %27
  %33 = load i64, i64* @errno, align 8
  %34 = call i32 @strerror(i64 %33)
  %35 = call i32 @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 -1, i32* %5, align 4
  br label %111

36:                                               ; preds = %18
  br label %38

37:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @fd_set_block(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %111

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %70, %63, %43
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 4
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  %50 = bitcast i32* %8 to i8*
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = sub i64 4, %55
  %57 = call i32 (i32, ...) @write(i32 %49, i8* %53, i64 %56)
  store i32 %57, i32* %10, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %70

59:                                               ; preds = %48
  %60 = load i64, i64* @errno, align 8
  %61 = load i64, i64* @EAGAIN, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %45

64:                                               ; preds = %59
  %65 = load i64, i64* @errno, align 8
  %66 = call i32 @strerror(i64 %65)
  %67 = call i32 @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @fd_set_nonblock(i32 %68)
  store i32 0, i32* %5, align 4
  br label %111

70:                                               ; preds = %48
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %45

74:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %101, %94, %74
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %75
  %80 = load i32, i32* %12, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %85, %86
  %88 = call i32 (i32, ...) @write(i32 %80, i8* %84, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %101

90:                                               ; preds = %79
  %91 = load i64, i64* @errno, align 8
  %92 = load i64, i64* @EAGAIN, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %75

95:                                               ; preds = %90
  %96 = load i64, i64* @errno, align 8
  %97 = call i32 @strerror(i64 %96)
  %98 = call i32 @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @fd_set_nonblock(i32 %99)
  store i32 0, i32* %5, align 4
  br label %111

101:                                              ; preds = %79
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %75

105:                                              ; preds = %75
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @fd_set_nonblock(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %111

110:                                              ; preds = %105
  store i32 1, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %109, %95, %64, %42, %32, %31
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @write(i32, ...) #1

declare dso_local i32 @log_err(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @fd_set_block(i32) #1

declare dso_local i32 @fd_set_nonblock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
