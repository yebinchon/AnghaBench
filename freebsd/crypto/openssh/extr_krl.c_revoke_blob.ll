; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_krl.c_revoke_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_krl.c_revoke_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revoked_blob_tree = type { i32 }
%struct.revoked_blob = type { i64, %struct.revoked_blob* }

@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@revoked_blob_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.revoked_blob_tree*, %struct.revoked_blob*, i64)* @revoke_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @revoke_blob(%struct.revoked_blob_tree* %0, %struct.revoked_blob* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.revoked_blob_tree*, align 8
  %6 = alloca %struct.revoked_blob*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.revoked_blob*, align 8
  %9 = alloca %struct.revoked_blob*, align 8
  store %struct.revoked_blob_tree* %0, %struct.revoked_blob_tree** %5, align 8
  store %struct.revoked_blob* %1, %struct.revoked_blob** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = call %struct.revoked_blob* @calloc(i32 1, i32 16)
  store %struct.revoked_blob* %10, %struct.revoked_blob** %8, align 8
  %11 = icmp eq %struct.revoked_blob* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %13, i32* %4, align 4
  br label %35

14:                                               ; preds = %3
  %15 = load %struct.revoked_blob*, %struct.revoked_blob** %6, align 8
  %16 = load %struct.revoked_blob*, %struct.revoked_blob** %8, align 8
  %17 = getelementptr inbounds %struct.revoked_blob, %struct.revoked_blob* %16, i32 0, i32 1
  store %struct.revoked_blob* %15, %struct.revoked_blob** %17, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.revoked_blob*, %struct.revoked_blob** %8, align 8
  %20 = getelementptr inbounds %struct.revoked_blob, %struct.revoked_blob* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @revoked_blob_tree, align 4
  %22 = load %struct.revoked_blob_tree*, %struct.revoked_blob_tree** %5, align 8
  %23 = load %struct.revoked_blob*, %struct.revoked_blob** %8, align 8
  %24 = call %struct.revoked_blob* @RB_INSERT(i32 %21, %struct.revoked_blob_tree* %22, %struct.revoked_blob* %23)
  store %struct.revoked_blob* %24, %struct.revoked_blob** %9, align 8
  %25 = load %struct.revoked_blob*, %struct.revoked_blob** %9, align 8
  %26 = icmp ne %struct.revoked_blob* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %14
  %28 = load %struct.revoked_blob*, %struct.revoked_blob** %8, align 8
  %29 = getelementptr inbounds %struct.revoked_blob, %struct.revoked_blob* %28, i32 0, i32 1
  %30 = load %struct.revoked_blob*, %struct.revoked_blob** %29, align 8
  %31 = call i32 @free(%struct.revoked_blob* %30)
  %32 = load %struct.revoked_blob*, %struct.revoked_blob** %8, align 8
  %33 = call i32 @free(%struct.revoked_blob* %32)
  br label %34

34:                                               ; preds = %27, %14
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %12
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.revoked_blob* @calloc(i32, i32) #1

declare dso_local %struct.revoked_blob* @RB_INSERT(i32, %struct.revoked_blob_tree*, %struct.revoked_blob*) #1

declare dso_local i32 @free(%struct.revoked_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
