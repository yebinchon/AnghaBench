; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-utils.c_rp_strerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-utils.c_rp_strerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@rp_strerror.s = internal global [100 x i8] zeroinitializer, align 16
@rp_errors = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"unknown (error=%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rp_strerror(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 100, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %40, %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rp_errors, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rp_errors, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %2, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %13
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rp_errors, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @strlcpy(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @rp_strerror.s, i64 0, i64 0), i32* %28, i64 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rp_errors, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @strlen(i32* %36)
  %38 = load i64, i64* %3, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %22, %13
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %5

43:                                               ; preds = %5
  %44 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @rp_strerror.s, i64 0, i64 0), align 16
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @rp_strerror.s, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %43
  ret i8* getelementptr inbounds ([100 x i8], [100 x i8]* @rp_strerror.s, i64 0, i64 0)
}

declare dso_local i32 @strlcpy(i8*, i32*, i64) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
