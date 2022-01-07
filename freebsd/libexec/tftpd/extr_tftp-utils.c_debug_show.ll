; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-utils.c_debug_show.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-utils.c_debug_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@debug_show.s = internal global [100 x i8] zeroinitializer, align 16
@debugs = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @debug_show(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 100, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i8 0, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @debug_show.s, i64 0, i64 0), align 16
  br label %6

6:                                                ; preds = %40, %1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debugs, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %6
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debugs, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %15, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %14
  %25 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @debug_show.s, i64 0, i64 0), align 16
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @strlcat(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @debug_show.s, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debugs, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @strlcat(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @debug_show.s, i64 0, i64 0), i8* %37, i64 %38)
  br label %40

40:                                               ; preds = %31, %14
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %6

43:                                               ; preds = %6
  %44 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @debug_show.s, i64 0, i64 0), align 16
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @debug_show.s, i64 0, i64 0), i8** %2, align 8
  br label %49

48:                                               ; preds = %43
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i8*, i8** %2, align 8
  ret i8* %50
}

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
