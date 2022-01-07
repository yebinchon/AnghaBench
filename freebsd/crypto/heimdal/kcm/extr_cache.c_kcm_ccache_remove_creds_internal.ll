; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_ccache_remove_creds_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_ccache_remove_creds_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.kcm_creds* }
%struct.kcm_creds = type { %struct.kcm_creds*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kcm_ccache_remove_creds_internal(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.kcm_creds*, align 8
  %6 = alloca %struct.kcm_creds*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.kcm_creds*, %struct.kcm_creds** %8, align 8
  store %struct.kcm_creds* %9, %struct.kcm_creds** %5, align 8
  br label %10

10:                                               ; preds = %13, %2
  %11 = load %struct.kcm_creds*, %struct.kcm_creds** %5, align 8
  %12 = icmp ne %struct.kcm_creds* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.kcm_creds*, %struct.kcm_creds** %5, align 8
  %16 = getelementptr inbounds %struct.kcm_creds, %struct.kcm_creds* %15, i32 0, i32 1
  %17 = call i32 @krb5_free_cred_contents(i32 %14, i32* %16)
  %18 = load %struct.kcm_creds*, %struct.kcm_creds** %5, align 8
  store %struct.kcm_creds* %18, %struct.kcm_creds** %6, align 8
  %19 = load %struct.kcm_creds*, %struct.kcm_creds** %5, align 8
  %20 = getelementptr inbounds %struct.kcm_creds, %struct.kcm_creds* %19, i32 0, i32 0
  %21 = load %struct.kcm_creds*, %struct.kcm_creds** %20, align 8
  store %struct.kcm_creds* %21, %struct.kcm_creds** %5, align 8
  %22 = load %struct.kcm_creds*, %struct.kcm_creds** %6, align 8
  %23 = call i32 @free(%struct.kcm_creds* %22)
  br label %10

24:                                               ; preds = %10
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.kcm_creds* null, %struct.kcm_creds** %26, align 8
  ret i32 0
}

declare dso_local i32 @krb5_free_cred_contents(i32, i32*) #1

declare dso_local i32 @free(%struct.kcm_creds*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
