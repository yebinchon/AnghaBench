; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_resolve_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_resolve_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_list = type { i32 }
%struct.ub_ctx = type { i32 }

@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@verb = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s has no IP addresses I can use\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_list* (i8*, i32, i8*, i8*, i8*, i32, i32)* @resolve_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_list* @resolve_name(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ip_list*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ub_ctx*, align 8
  %17 = alloca %struct.ip_list*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.ip_list* null, %struct.ip_list** %17, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.ip_list* @parse_ip_addr(i8* %18, i32 %19)
  store %struct.ip_list* %20, %struct.ip_list** %17, align 8
  %21 = icmp ne %struct.ip_list* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load %struct.ip_list*, %struct.ip_list** %17, align 8
  store %struct.ip_list* %23, %struct.ip_list** %8, align 8
  br label %65

24:                                               ; preds = %7
  %25 = load i8*, i8** %11, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call %struct.ub_ctx* @create_unbound_context(i8* %25, i8* %26, i8* %27, i32 %28, i32 %29)
  store %struct.ub_ctx* %30, %struct.ub_ctx** %16, align 8
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %24
  %34 = load %struct.ub_ctx*, %struct.ub_ctx** %16, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %38 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %39 = call i32 @resolve_host_ip(%struct.ub_ctx* %34, i8* %35, i32 %36, i32 %37, i32 %38, %struct.ip_list** %17)
  br label %40

40:                                               ; preds = %33, %24
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load %struct.ub_ctx*, %struct.ub_ctx** %16, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %48 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %49 = call i32 @resolve_host_ip(%struct.ub_ctx* %44, i8* %45, i32 %46, i32 %47, i32 %48, %struct.ip_list** %17)
  br label %50

50:                                               ; preds = %43, %40
  %51 = load %struct.ub_ctx*, %struct.ub_ctx** %16, align 8
  %52 = call i32 @ub_ctx_delete(%struct.ub_ctx* %51)
  %53 = load %struct.ip_list*, %struct.ip_list** %17, align 8
  %54 = icmp ne %struct.ip_list* %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* @verb, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = call i32 @exit(i32 0) #3
  unreachable

63:                                               ; preds = %50
  %64 = load %struct.ip_list*, %struct.ip_list** %17, align 8
  store %struct.ip_list* %64, %struct.ip_list** %8, align 8
  br label %65

65:                                               ; preds = %63, %22
  %66 = load %struct.ip_list*, %struct.ip_list** %8, align 8
  ret %struct.ip_list* %66
}

declare dso_local %struct.ip_list* @parse_ip_addr(i8*, i32) #1

declare dso_local %struct.ub_ctx* @create_unbound_context(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @resolve_host_ip(%struct.ub_ctx*, i8*, i32, i32, i32, %struct.ip_list**) #1

declare dso_local i32 @ub_ctx_delete(%struct.ub_ctx*) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
