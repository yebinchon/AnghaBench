; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i32 }
%struct.auth_zones = type { i32 }
%struct.auth_zone = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.auth_xfer* @auth_xfer_create(%struct.auth_zones* %0, %struct.auth_zone* %1) #0 {
  %3 = alloca %struct.auth_xfer*, align 8
  %4 = alloca %struct.auth_zones*, align 8
  %5 = alloca %struct.auth_zone*, align 8
  %6 = alloca %struct.auth_xfer*, align 8
  store %struct.auth_zones* %0, %struct.auth_zones** %4, align 8
  store %struct.auth_zone* %1, %struct.auth_zone** %5, align 8
  %7 = load %struct.auth_zone*, %struct.auth_zone** %5, align 8
  %8 = call %struct.auth_xfer* @auth_xfer_new(%struct.auth_zone* %7)
  store %struct.auth_xfer* %8, %struct.auth_xfer** %6, align 8
  %9 = load %struct.auth_xfer*, %struct.auth_xfer** %6, align 8
  %10 = icmp ne %struct.auth_xfer* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.auth_xfer* null, %struct.auth_xfer** %3, align 8
  br label %20

13:                                               ; preds = %2
  %14 = load %struct.auth_zones*, %struct.auth_zones** %4, align 8
  %15 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %14, i32 0, i32 0
  %16 = load %struct.auth_xfer*, %struct.auth_xfer** %6, align 8
  %17 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %16, i32 0, i32 0
  %18 = call i32 @rbtree_insert(i32* %15, i32* %17)
  %19 = load %struct.auth_xfer*, %struct.auth_xfer** %6, align 8
  store %struct.auth_xfer* %19, %struct.auth_xfer** %3, align 8
  br label %20

20:                                               ; preds = %13, %11
  %21 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  ret %struct.auth_xfer* %21
}

declare dso_local %struct.auth_xfer* @auth_xfer_new(%struct.auth_zone*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @rbtree_insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
