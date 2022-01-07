; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_host_realm.c_dns_find_realm.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_host_realm.c_dns_find_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_dns_reply = type { i32 }

@dns_find_realm.default_labels = internal global [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [10 x i8] c"_kerberos\00", align 1
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"libdefaults\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"dns_lookup_realm_labels\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s.%s.\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"TXT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32**)* @dns_find_realm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_find_realm(i32 %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rk_dns_reply*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  %16 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i8** @krb5_config_get_strings(i32 %20, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8** %21, i8*** %12, align 8
  %22 = load i8**, i8*** %12, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i8**, i8*** %12, align 8
  store i8** %25, i8*** %11, align 8
  br label %27

26:                                               ; preds = %3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @dns_find_realm.default_labels, i64 0, i64 0), i8*** %11, align 8
  br label %27

27:                                               ; preds = %26, %24
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 46
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %32, %27
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %88, %35
  %37 = load i8**, i8*** %11, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %91

43:                                               ; preds = %36
  %44 = trunc i64 %17 to i32
  %45 = load i8**, i8*** %11, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @snprintf(i8* %19, i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %49, i8* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp uge i64 %56, %17
  br i1 %57, label %58, label %65

58:                                               ; preds = %54, %43
  %59 = load i8**, i8*** %12, align 8
  %60 = icmp ne i8** %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8**, i8*** %12, align 8
  %63 = call i32 @krb5_config_free_strings(i8** %62)
  br label %64

64:                                               ; preds = %61, %58
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %98

65:                                               ; preds = %54
  %66 = call %struct.rk_dns_reply* @rk_dns_lookup(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store %struct.rk_dns_reply* %66, %struct.rk_dns_reply** %10, align 8
  %67 = load %struct.rk_dns_reply*, %struct.rk_dns_reply** %10, align 8
  %68 = icmp ne %struct.rk_dns_reply* %67, null
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = load %struct.rk_dns_reply*, %struct.rk_dns_reply** %10, align 8
  %71 = getelementptr inbounds %struct.rk_dns_reply, %struct.rk_dns_reply* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32**, i32*** %7, align 8
  %74 = call i32 @copy_txt_to_realms(i32 %72, i32** %73)
  store i32 %74, i32* %14, align 4
  %75 = load %struct.rk_dns_reply*, %struct.rk_dns_reply** %10, align 8
  %76 = call i32 @rk_dns_free_data(%struct.rk_dns_reply* %75)
  %77 = load i32, i32* %14, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %69
  %80 = load i8**, i8*** %12, align 8
  %81 = icmp ne i8** %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i8**, i8*** %12, align 8
  %84 = call i32 @krb5_config_free_strings(i8** %83)
  br label %85

85:                                               ; preds = %82, %79
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %98

86:                                               ; preds = %69
  br label %87

87:                                               ; preds = %86, %65
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %36

91:                                               ; preds = %36
  %92 = load i8**, i8*** %12, align 8
  %93 = icmp ne i8** %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i8**, i8*** %12, align 8
  %96 = call i32 @krb5_config_free_strings(i8** %95)
  br label %97

97:                                               ; preds = %94, %91
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %98

98:                                               ; preds = %97, %85, %64
  %99 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8** @krb5_config_get_strings(i32, i32*, i8*, i8*, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @krb5_config_free_strings(i8**) #2

declare dso_local %struct.rk_dns_reply* @rk_dns_lookup(i8*, i8*) #2

declare dso_local i32 @copy_txt_to_realms(i32, i32**) #2

declare dso_local i32 @rk_dns_free_data(%struct.rk_dns_reply*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
