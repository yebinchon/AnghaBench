; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/tests/extr_option-domain-search.c_two_domains_forwardptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/tests/extr_option-domain-search.c_two_domains_forwardptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet = type { %struct.option_data* }
%struct.option_data = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"\07example\03org\C0\0D\06foobar\00\00", align 1
@DHO_DOMAIN_SEARCH = common dso_local global i64 0, align 8
@env = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @two_domains_forwardptr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.packet, align 8
  %3 = alloca %struct.option_data*, align 8
  %4 = alloca i8*, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = getelementptr inbounds %struct.packet, %struct.packet* %2, i32 0, i32 0
  %6 = load %struct.option_data*, %struct.option_data** %5, align 8
  %7 = load i64, i64* @DHO_DOMAIN_SEARCH, align 8
  %8 = getelementptr inbounds %struct.option_data, %struct.option_data* %6, i64 %7
  store %struct.option_data* %8, %struct.option_data** %3, align 8
  %9 = load %struct.option_data*, %struct.option_data** %3, align 8
  %10 = getelementptr inbounds %struct.option_data, %struct.option_data* %9, i32 0, i32 0
  store i32 22, i32* %10, align 4
  %11 = load %struct.option_data*, %struct.option_data** %3, align 8
  %12 = getelementptr inbounds %struct.option_data, %struct.option_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @malloc(i32 %13)
  %15 = load %struct.option_data*, %struct.option_data** %3, align 8
  %16 = getelementptr inbounds %struct.option_data, %struct.option_data* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.option_data*, %struct.option_data** %3, align 8
  %18 = getelementptr inbounds %struct.option_data, %struct.option_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.option_data*, %struct.option_data** %3, align 8
  %22 = getelementptr inbounds %struct.option_data, %struct.option_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcpy(i32 %19, i8* %20, i32 %23)
  %25 = load i32, i32* @env, align 4
  %26 = call i32 @setjmp(i32 %25) #4
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %0
  %30 = call i32 @expand_domain_search(%struct.packet* %2)
  br label %31

31:                                               ; preds = %29, %0
  %32 = load i32, i32* %1, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @abort() #5
  unreachable

36:                                               ; preds = %31
  %37 = load %struct.option_data*, %struct.option_data** %3, align 8
  %38 = getelementptr inbounds %struct.option_data, %struct.option_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @free(i32 %39)
  ret void
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #2

declare dso_local i32 @expand_domain_search(%struct.packet*) #1

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
