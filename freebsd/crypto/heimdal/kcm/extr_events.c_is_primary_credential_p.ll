; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_events.c_is_primary_credential_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_events.c_is_primary_credential_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32* }

@KRB5_TC_MATCH_KEYTYPE = common dso_local global i32 0, align 4
@KRB5_TC_MATCH_FLAGS_EXACT = common dso_local global i32 0, align 4
@KRB5_TC_MATCH_TIMES_EXACT = common dso_local global i32 0, align 4
@KRB5_TC_MATCH_AUTHDATA = common dso_local global i32 0, align 4
@KRB5_TC_MATCH_2ND_TKT = common dso_local global i32 0, align 4
@KRB5_TC_MATCH_IS_SKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*, %struct.TYPE_8__*)* @is_primary_credential_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_primary_credential_p(i32 %0, %struct.TYPE_9__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

14:                                               ; preds = %3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @krb5_principal_compare(i32 %20, i32* %23, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %19, %14
  store i32 0, i32* %4, align 4
  br label %56

30:                                               ; preds = %19
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = icmp eq %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %56

36:                                               ; preds = %30
  %37 = load i32, i32* @KRB5_TC_MATCH_KEYTYPE, align 4
  %38 = load i32, i32* @KRB5_TC_MATCH_FLAGS_EXACT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @KRB5_TC_MATCH_TIMES_EXACT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @KRB5_TC_MATCH_AUTHDATA, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @KRB5_TC_MATCH_2ND_TKT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @KRB5_TC_MATCH_IS_SKEY, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = call i32 @krb5_compare_creds(i32 %48, i32 %49, %struct.TYPE_8__* %50, i32* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %36, %35, %29, %13
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @krb5_principal_compare(i32, i32*, i32*) #1

declare dso_local i32 @krb5_compare_creds(i32, i32, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
