; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/tests/extr_option-domain-search.c_one_domain_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/tests/extr_option-domain-search.c_one_domain_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet = type { %struct.option_data* }
%struct.option_data = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"\07example\03org\00\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"example.org.\00", align 1
@DHO_DOMAIN_SEARCH = common dso_local global i64 0, align 8
@env = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @one_domain_valid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.packet, align 8
  %3 = alloca %struct.option_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %6 = getelementptr inbounds %struct.packet, %struct.packet* %2, i32 0, i32 0
  %7 = load %struct.option_data*, %struct.option_data** %6, align 8
  %8 = load i64, i64* @DHO_DOMAIN_SEARCH, align 8
  %9 = getelementptr inbounds %struct.option_data, %struct.option_data* %7, i64 %8
  store %struct.option_data* %9, %struct.option_data** %3, align 8
  %10 = load %struct.option_data*, %struct.option_data** %3, align 8
  %11 = getelementptr inbounds %struct.option_data, %struct.option_data* %10, i32 0, i32 0
  store i32 13, i32* %11, align 4
  %12 = load %struct.option_data*, %struct.option_data** %3, align 8
  %13 = getelementptr inbounds %struct.option_data, %struct.option_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @malloc(i32 %14)
  %16 = load %struct.option_data*, %struct.option_data** %3, align 8
  %17 = getelementptr inbounds %struct.option_data, %struct.option_data* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.option_data*, %struct.option_data** %3, align 8
  %19 = getelementptr inbounds %struct.option_data, %struct.option_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.option_data*, %struct.option_data** %3, align 8
  %23 = getelementptr inbounds %struct.option_data, %struct.option_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcpy(i32 %20, i8* %21, i32 %24)
  %26 = load i32, i32* @env, align 4
  %27 = call i32 @setjmp(i32 %26) #4
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %0
  %31 = call i32 @expand_domain_search(%struct.packet* %2)
  br label %32

32:                                               ; preds = %30, %0
  %33 = load %struct.option_data*, %struct.option_data** %3, align 8
  %34 = getelementptr inbounds %struct.option_data, %struct.option_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load %struct.option_data*, %struct.option_data** %3, align 8
  %41 = getelementptr inbounds %struct.option_data, %struct.option_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @strcmp(i32 %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39, %32
  %47 = call i32 (...) @abort() #5
  unreachable

48:                                               ; preds = %39
  %49 = load %struct.option_data*, %struct.option_data** %3, align 8
  %50 = getelementptr inbounds %struct.option_data, %struct.option_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @free(i32 %51)
  ret void
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #2

declare dso_local i32 @expand_domain_search(%struct.packet*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
