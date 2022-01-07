; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_config_get_hosts.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_config_get_hosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_krbhst_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"realms\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"configuration file for realm %s%s found\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@KD_CONFIG_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.krb5_krbhst_data*, i8*)* @config_get_hosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_get_hosts(i32 %0, %struct.krb5_krbhst_data* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.krb5_krbhst_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store %struct.krb5_krbhst_data* %1, %struct.krb5_krbhst_data** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %5, align 8
  %11 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i8** @krb5_config_get_strings(i32 %9, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %13, i32* null)
  store i8** %14, i8*** %8, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %5, align 8
  %17 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i8**, i8*** %8, align 8
  %20 = icmp ne i8** %19, null
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %23 = call i32 @_krb5_debug(i32 %15, i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %18, i8* %22)
  %24 = load i8**, i8*** %8, align 8
  %25 = icmp eq i8** %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %66

27:                                               ; preds = %3
  %28 = load i32, i32* @KD_CONFIG_EXISTS, align 4
  %29 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %5, align 8
  %30 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %60, %27
  %34 = load i8**, i8*** %8, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i8**, i8*** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br label %43

43:                                               ; preds = %36, %33
  %44 = phi i1 [ false, %33 ], [ %42, %36 ]
  br i1 %44, label %45, label %63

45:                                               ; preds = %43
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %5, align 8
  %48 = load i8**, i8*** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %5, align 8
  %54 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %5, align 8
  %57 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @append_host_string(i32 %46, %struct.krb5_krbhst_data* %47, i8* %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %33

63:                                               ; preds = %43
  %64 = load i8**, i8*** %8, align 8
  %65 = call i32 @krb5_config_free_strings(i8** %64)
  br label %66

66:                                               ; preds = %63, %26
  ret void
}

declare dso_local i8** @krb5_config_get_strings(i32, i32*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @_krb5_debug(i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @append_host_string(i32, %struct.krb5_krbhst_data*, i8*, i32, i32) #1

declare dso_local i32 @krb5_config_free_strings(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
