; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/tests/extr_option-domain-search.c_no_option_present.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/tests/extr_option-domain-search.c_no_option_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option_data = type { i64, i32* }
%struct.packet = type { %struct.option_data* }

@DHO_DOMAIN_SEARCH = common dso_local global i64 0, align 8
@env = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @no_option_present() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.option_data, align 8
  %3 = alloca %struct.packet, align 8
  %4 = getelementptr inbounds %struct.option_data, %struct.option_data* %2, i32 0, i32 1
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %struct.option_data, %struct.option_data* %2, i32 0, i32 0
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.packet, %struct.packet* %3, i32 0, i32 0
  %7 = load %struct.option_data*, %struct.option_data** %6, align 8
  %8 = load i64, i64* @DHO_DOMAIN_SEARCH, align 8
  %9 = getelementptr inbounds %struct.option_data, %struct.option_data* %7, i64 %8
  %10 = bitcast %struct.option_data* %9 to i8*
  %11 = bitcast %struct.option_data* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 16, i1 false)
  %12 = load i32, i32* @env, align 4
  %13 = call i32 @setjmp(i32 %12) #5
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 @expand_domain_search(%struct.packet* %3)
  br label %18

18:                                               ; preds = %16, %0
  %19 = getelementptr inbounds %struct.packet, %struct.packet* %3, i32 0, i32 0
  %20 = load %struct.option_data*, %struct.option_data** %19, align 8
  %21 = load i64, i64* @DHO_DOMAIN_SEARCH, align 8
  %22 = getelementptr inbounds %struct.option_data, %struct.option_data* %20, i64 %21
  %23 = getelementptr inbounds %struct.option_data, %struct.option_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.packet, %struct.packet* %3, i32 0, i32 0
  %28 = load %struct.option_data*, %struct.option_data** %27, align 8
  %29 = load i64, i64* @DHO_DOMAIN_SEARCH, align 8
  %30 = getelementptr inbounds %struct.option_data, %struct.option_data* %28, i64 %29
  %31 = getelementptr inbounds %struct.option_data, %struct.option_data* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %26, %18
  %35 = call i32 (...) @abort() #6
  unreachable

36:                                               ; preds = %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #2

declare dso_local i32 @expand_domain_search(%struct.packet*) #3

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { returns_twice }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
