; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_cred.c_find_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_cred.c_find_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@KRB5_TC_DONT_MATCH_REALM = common dso_local global i32 0, align 4
@KRB5_CC_NOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, %struct.TYPE_11__**, %struct.TYPE_11__*)* @find_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_cred(i32 %0, i32 %1, i32 %2, %struct.TYPE_11__** %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__**, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_11__, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_11__** %3, %struct.TYPE_11__*** %10, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %11, align 8
  %14 = call i32 @krb5_cc_clear_mcred(%struct.TYPE_11__* %13)
  %15 = load i32, i32* %9, align 4
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @KRB5_TC_DONT_MATCH_REALM, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %21 = call i64 @krb5_cc_retrieve_cred(i32 %17, i32 %18, i32 %19, %struct.TYPE_11__* %13, %struct.TYPE_11__* %20)
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %57

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %49, %25
  %27 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %28 = icmp ne %struct.TYPE_11__** %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = icmp ne %struct.TYPE_11__* %31, null
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i1 [ false, %26 ], [ %32, %29 ]
  br i1 %34, label %35, label %52

35:                                               ; preds = %33
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @KRB5_TC_DONT_MATCH_REALM, align 4
  %38 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = call i64 @krb5_compare_creds(i32 %36, i32 %37, %struct.TYPE_11__* %13, %struct.TYPE_11__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %47 = call i64 @krb5_copy_creds_contents(i32 %43, %struct.TYPE_11__* %45, %struct.TYPE_11__* %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  store i64 %48, i64* %6, align 8
  br label %57

49:                                               ; preds = %35
  %50 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %50, i32 1
  store %struct.TYPE_11__** %51, %struct.TYPE_11__*** %10, align 8
  br label %26

52:                                               ; preds = %33
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @KRB5_CC_NOTFOUND, align 4
  %56 = call i64 @not_found(i32 %53, i32 %54, i32 %55)
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %52, %42, %24
  %58 = load i64, i64* %6, align 8
  ret i64 %58
}

declare dso_local i32 @krb5_cc_clear_mcred(%struct.TYPE_11__*) #1

declare dso_local i64 @krb5_cc_retrieve_cred(i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i64 @krb5_compare_creds(i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i64 @krb5_copy_creds_contents(i32, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i64 @not_found(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
