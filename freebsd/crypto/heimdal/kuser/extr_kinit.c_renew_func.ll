; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kinit.c_renew_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kinit.c_renew_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renew_ctx = type { i32, i32, i32, i32 }

@renewable_flag = common dso_local global i64 0, align 8
@validate_flag = common dso_local global i32 0, align 4
@server_str = common dso_local global i32 0, align 4
@do_afslog = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @renew_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renew_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.renew_ctx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.renew_ctx*
  store %struct.renew_ctx* %8, %struct.renew_ctx** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load i64, i64* @renewable_flag, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.renew_ctx*, %struct.renew_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.renew_ctx, %struct.renew_ctx* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* @renewable_flag, align 8
  %16 = load i32, i32* @validate_flag, align 4
  %17 = load %struct.renew_ctx*, %struct.renew_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.renew_ctx, %struct.renew_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @server_str, align 4
  %21 = load %struct.renew_ctx*, %struct.renew_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.renew_ctx, %struct.renew_ctx* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @renew_validate(i32 %14, i64 %15, i32 %16, i32 %19, i32 %20, i32 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %11
  store i32 1, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %11
  br label %30

29:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct.renew_ctx*, %struct.renew_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.renew_ctx, %struct.renew_ctx* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.renew_ctx*, %struct.renew_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.renew_ctx, %struct.renew_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.renew_ctx*, %struct.renew_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.renew_ctx, %struct.renew_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.renew_ctx*, %struct.renew_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.renew_ctx, %struct.renew_ctx* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @get_new_tickets(i32 %36, i32 %39, i32 %42, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %33, %30
  %48 = load i64, i64* @do_afslog, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = call i64 (...) @k_hasafs()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load %struct.renew_ctx*, %struct.renew_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.renew_ctx, %struct.renew_ctx* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.renew_ctx*, %struct.renew_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.renew_ctx, %struct.renew_ctx* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @krb5_afslog(i32 %56, i32 %59, i32* null, i32* null)
  br label %61

61:                                               ; preds = %53, %50, %47
  %62 = load %struct.renew_ctx*, %struct.renew_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.renew_ctx, %struct.renew_ctx* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.renew_ctx*, %struct.renew_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.renew_ctx, %struct.renew_ctx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.renew_ctx*, %struct.renew_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.renew_ctx, %struct.renew_ctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @server_str, align 4
  %72 = call i32 @ticket_lifetime(i32 %64, i32 %67, i32 %70, i32 %71)
  %73 = sdiv i32 %72, 2
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  ret i32 %75
}

declare dso_local i64 @renew_validate(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @get_new_tickets(i32, i32, i32, i32, i32) #1

declare dso_local i64 @k_hasafs(...) #1

declare dso_local i32 @krb5_afslog(i32, i32, i32*, i32*) #1

declare dso_local i32 @ticket_lifetime(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
