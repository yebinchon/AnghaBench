; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rr_type2buffer_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rr_type2buffer_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"IXFR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"AXFR\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"MAILA\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"MAILB\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"TYPE%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_rr_type2buffer_str(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.TYPE_3__* @ldns_rr_descript(i32 %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %24 [
    i32 130, label %9
    i32 131, label %12
    i32 129, label %15
    i32 128, label %18
    i32 132, label %21
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %43

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %43

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %43

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %43

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %43

24:                                               ; preds = %2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %36)
  br label %42

38:                                               ; preds = %27, %24
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %32
  br label %43

43:                                               ; preds = %42, %21, %18, %15, %12, %9
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @ldns_buffer_status(i32* %44)
  ret i32 %45
}

declare dso_local %struct.TYPE_3__* @ldns_rr_descript(i32) #1

declare dso_local i32 @ldns_buffer_printf(i32*, i8*, ...) #1

declare dso_local i32 @ldns_buffer_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
