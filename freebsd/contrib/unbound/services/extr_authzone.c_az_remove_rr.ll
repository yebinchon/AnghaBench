; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_remove_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_remove_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i64, i32 }
%struct.auth_data = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c"wrong class for RR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, i32*, i64, i64, i32*)* @az_remove_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_remove_rr(%struct.auth_zone* %0, i32* %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_zone*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.auth_data*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i32*, i32** %8, align 8
  store i32* %18, i32** %13, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i64 @sldns_wirerr_get_type(i32* %19, i64 %20, i64 %21)
  store i64 %22, i64* %14, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @sldns_wirerr_get_class(i32* %23, i64 %24, i64 %25)
  store i64 %26, i64* %15, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i64 @sldns_wirerr_get_rdatalen(i32* %27, i64 %28, i64 %29)
  %31 = add i64 %30, 2
  store i64 %31, i64* %16, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32* @sldns_wirerr_get_rdatawl(i32* %32, i64 %33, i64 %34)
  store i32* %35, i32** %17, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %38 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %5
  %42 = call i32 @log_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %74

43:                                               ; preds = %5
  %44 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call %struct.auth_data* @az_find_name(%struct.auth_zone* %44, i32* %45, i64 %46)
  store %struct.auth_data* %47, %struct.auth_data** %12, align 8
  %48 = load %struct.auth_data*, %struct.auth_data** %12, align 8
  %49 = icmp ne %struct.auth_data* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = load i32*, i32** %11, align 8
  store i32 1, i32* %51, align 4
  store i32 1, i32* %6, align 4
  br label %74

52:                                               ; preds = %43
  %53 = load %struct.auth_data*, %struct.auth_data** %12, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i32*, i32** %17, align 8
  %56 = load i64, i64* %16, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @az_domain_remove_rr(%struct.auth_data* %53, i64 %54, i32* %55, i64 %56, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %74

61:                                               ; preds = %52
  %62 = load %struct.auth_data*, %struct.auth_data** %12, align 8
  %63 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %68 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %67, i32 0, i32 1
  %69 = load %struct.auth_data*, %struct.auth_data** %12, align 8
  %70 = call i32 @rbtree_delete(i32* %68, %struct.auth_data* %69)
  %71 = load %struct.auth_data*, %struct.auth_data** %12, align 8
  %72 = call i32 @auth_data_delete(%struct.auth_data* %71)
  br label %73

73:                                               ; preds = %66, %61
  store i32 1, i32* %6, align 4
  br label %74

74:                                               ; preds = %73, %60, %50, %41
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i64 @sldns_wirerr_get_type(i32*, i64, i64) #1

declare dso_local i64 @sldns_wirerr_get_class(i32*, i64, i64) #1

declare dso_local i64 @sldns_wirerr_get_rdatalen(i32*, i64, i64) #1

declare dso_local i32* @sldns_wirerr_get_rdatawl(i32*, i64, i64) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local %struct.auth_data* @az_find_name(%struct.auth_zone*, i32*, i64) #1

declare dso_local i32 @az_domain_remove_rr(%struct.auth_data*, i64, i32*, i64, i32*) #1

declare dso_local i32 @rbtree_delete(i32*, %struct.auth_data*) #1

declare dso_local i32 @auth_data_delete(%struct.auth_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
