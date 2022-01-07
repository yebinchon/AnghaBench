; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_print_rr_short.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_print_rr_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@rr_types = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"has \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" record\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_rr_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_rr_short(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @ldns_rr_get_type(i32* %6)
  store i64 %7, i64* %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @ldns_rr_rd_count(i32* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @ldns_rr_owner(i32* %10)
  %12 = call i32 @print_rdf_nodot(i32 %11)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %35, %1
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rr_types, align 8
  %17 = call i64 @countof(%struct.TYPE_3__* %16)
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rr_types, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rr_types, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %43

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %4, align 8
  br label %14

38:                                               ; preds = %14
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @print_rr_type(i64 %40)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %27
  store i64 0, i64* %4, align 8
  br label %44

44:                                               ; preds = %54, %43
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %50 = load i32*, i32** %2, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @ldns_rr_rdf(i32* %50, i64 %51)
  %53 = call i32 @print_rdf(i32 %52)
  br label %54

54:                                               ; preds = %48
  %55 = load i64, i64* %4, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %4, align 8
  br label %44

57:                                               ; preds = %44
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_rr_rd_count(i32*) #1

declare dso_local i32 @print_rdf_nodot(i32) #1

declare dso_local i32 @ldns_rr_owner(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @countof(%struct.TYPE_3__*) #1

declare dso_local i32 @print_rr_type(i64) #1

declare dso_local i32 @print_rdf(i32) #1

declare dso_local i32 @ldns_rr_rdf(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
