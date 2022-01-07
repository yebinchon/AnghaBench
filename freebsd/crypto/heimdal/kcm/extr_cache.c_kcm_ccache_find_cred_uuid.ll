; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_ccache_find_cred_uuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_ccache_find_cred_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_creds = type { i32, %struct.kcm_creds* }
%struct.TYPE_3__ = type { %struct.kcm_creds* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kcm_creds* @kcm_ccache_find_cred_uuid(i32 %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca %struct.kcm_creds*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kcm_creds*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.kcm_creds*, %struct.kcm_creds** %10, align 8
  store %struct.kcm_creds* %11, %struct.kcm_creds** %8, align 8
  br label %12

12:                                               ; preds = %25, %3
  %13 = load %struct.kcm_creds*, %struct.kcm_creds** %8, align 8
  %14 = icmp ne %struct.kcm_creds* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load %struct.kcm_creds*, %struct.kcm_creds** %8, align 8
  %17 = getelementptr inbounds %struct.kcm_creds, %struct.kcm_creds* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @memcmp(i32 %18, i32 %19, i32 4)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load %struct.kcm_creds*, %struct.kcm_creds** %8, align 8
  store %struct.kcm_creds* %23, %struct.kcm_creds** %4, align 8
  br label %30

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.kcm_creds*, %struct.kcm_creds** %8, align 8
  %27 = getelementptr inbounds %struct.kcm_creds, %struct.kcm_creds* %26, i32 0, i32 1
  %28 = load %struct.kcm_creds*, %struct.kcm_creds** %27, align 8
  store %struct.kcm_creds* %28, %struct.kcm_creds** %8, align 8
  br label %12

29:                                               ; preds = %12
  store %struct.kcm_creds* null, %struct.kcm_creds** %4, align 8
  br label %30

30:                                               ; preds = %29, %22
  %31 = load %struct.kcm_creds*, %struct.kcm_creds** %4, align 8
  ret %struct.kcm_creds* %31
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
