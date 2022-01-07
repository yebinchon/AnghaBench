; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_hostkeys_update_ctx_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_hostkeys_update_ctx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostkeys_update_ctx = type { i64, i64, %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostkeys_update_ctx*)* @hostkeys_update_ctx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostkeys_update_ctx_free(%struct.hostkeys_update_ctx* %0) #0 {
  %2 = alloca %struct.hostkeys_update_ctx*, align 8
  %3 = alloca i64, align 8
  store %struct.hostkeys_update_ctx* %0, %struct.hostkeys_update_ctx** %2, align 8
  %4 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %2, align 8
  %5 = icmp eq %struct.hostkeys_update_ctx* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %64

7:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %21, %7
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.hostkeys_update_ctx, %struct.hostkeys_update_ctx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.hostkeys_update_ctx, %struct.hostkeys_update_ctx* %15, i32 0, i32 6
  %17 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.hostkeys_update_ctx, %struct.hostkeys_update_ctx* %17, i64 %18
  %20 = call i32 @sshkey_free(%struct.hostkeys_update_ctx* byval(%struct.hostkeys_update_ctx) align 8 %19)
  br label %21

21:                                               ; preds = %14
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.hostkeys_update_ctx, %struct.hostkeys_update_ctx* %25, i32 0, i32 6
  %27 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %26, align 8
  %28 = call i32 @free(%struct.hostkeys_update_ctx* %27)
  %29 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.hostkeys_update_ctx, %struct.hostkeys_update_ctx* %29, i32 0, i32 5
  %31 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %30, align 8
  %32 = call i32 @free(%struct.hostkeys_update_ctx* %31)
  store i64 0, i64* %3, align 8
  br label %33

33:                                               ; preds = %46, %24
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.hostkeys_update_ctx, %struct.hostkeys_update_ctx* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.hostkeys_update_ctx, %struct.hostkeys_update_ctx* %40, i32 0, i32 4
  %42 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %41, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds %struct.hostkeys_update_ctx, %struct.hostkeys_update_ctx* %42, i64 %43
  %45 = call i32 @sshkey_free(%struct.hostkeys_update_ctx* byval(%struct.hostkeys_update_ctx) align 8 %44)
  br label %46

46:                                               ; preds = %39
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %3, align 8
  br label %33

49:                                               ; preds = %33
  %50 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %2, align 8
  %51 = getelementptr inbounds %struct.hostkeys_update_ctx, %struct.hostkeys_update_ctx* %50, i32 0, i32 4
  %52 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %51, align 8
  %53 = call i32 @free(%struct.hostkeys_update_ctx* %52)
  %54 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %2, align 8
  %55 = getelementptr inbounds %struct.hostkeys_update_ctx, %struct.hostkeys_update_ctx* %54, i32 0, i32 3
  %56 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %55, align 8
  %57 = call i32 @free(%struct.hostkeys_update_ctx* %56)
  %58 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %2, align 8
  %59 = getelementptr inbounds %struct.hostkeys_update_ctx, %struct.hostkeys_update_ctx* %58, i32 0, i32 2
  %60 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %59, align 8
  %61 = call i32 @free(%struct.hostkeys_update_ctx* %60)
  %62 = load %struct.hostkeys_update_ctx*, %struct.hostkeys_update_ctx** %2, align 8
  %63 = call i32 @free(%struct.hostkeys_update_ctx* %62)
  br label %64

64:                                               ; preds = %49, %6
  ret void
}

declare dso_local i32 @sshkey_free(%struct.hostkeys_update_ctx* byval(%struct.hostkeys_update_ctx) align 8) #1

declare dso_local i32 @free(%struct.hostkeys_update_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
