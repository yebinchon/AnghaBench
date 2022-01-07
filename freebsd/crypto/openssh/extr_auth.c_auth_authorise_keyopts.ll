; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_auth_authorise_keyopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_auth_authorise_keyopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ssh = type { i32 }
%struct.passwd = type { i32 }
%struct.sshauthopt = type { i64, i32*, i32*, i64, i32* }

@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: entry expired at %s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: principals on non-CA key\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: cert-authority flag invalid here\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: invalid from criteria\00", align 1
@.str.4 = private unnamed_addr constant [126 x i8] c"%s: Authentication tried for %.100s with correct key but not from a permitted host (host=%.200s, ip=%.200s, required=%.200s).\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"%s: Your host '%.200s' is not permitted to use this key for login.\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"%s: Certificate source-address invalid\00", align 1
@.str.7 = private unnamed_addr constant [109 x i8] c"%s: Authentication tried for %.100s with valid certificate but not from a permitted source address (%.200s).\00", align 1
@.str.8 = private unnamed_addr constant [78 x i8] c"%s: Your address '%.200s' is not permitted to use this certificate for login.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_authorise_keyopts(%struct.ssh* %0, %struct.passwd* %1, %struct.sshauthopt* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssh*, align 8
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca %struct.sshauthopt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [64 x i8], align 16
  store %struct.ssh* %0, %struct.ssh** %7, align 8
  store %struct.passwd* %1, %struct.passwd** %8, align 8
  store %struct.sshauthopt* %2, %struct.sshauthopt** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load %struct.ssh*, %struct.ssh** %7, align 8
  %17 = call i8* @ssh_remote_ipaddr(%struct.ssh* %16)
  store i8* %17, i8** %12, align 8
  %18 = load %struct.ssh*, %struct.ssh** %7, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 4
  %20 = call i8* @auth_get_canonical_hostname(%struct.ssh* %18, i32 %19)
  store i8* %20, i8** %13, align 8
  %21 = call i64 @time(i32* null)
  store i64 %21, i64* %14, align 8
  %22 = load %struct.sshauthopt*, %struct.sshauthopt** %9, align 8
  %23 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %5
  %27 = load i64, i64* %14, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load %struct.sshauthopt*, %struct.sshauthopt** %9, align 8
  %31 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %14, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.sshauthopt*, %struct.sshauthopt** %9, align 8
  %37 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %40 = call i32 @format_absolute_time(i64 %38, i8* %39, i32 64)
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %43 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %42)
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %46 = call i32 (i8*, i8*, ...) @auth_debug_add(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45)
  store i32 -1, i32* %6, align 4
  br label %140

47:                                               ; preds = %29, %26, %5
  %48 = load %struct.sshauthopt*, %struct.sshauthopt** %9, align 8
  %49 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.sshauthopt*, %struct.sshauthopt** %9, align 8
  %54 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 (i8*, i8*, ...) @auth_debug_add(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  store i32 -1, i32* %6, align 4
  br label %140

62:                                               ; preds = %52, %47
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %62
  %66 = load %struct.sshauthopt*, %struct.sshauthopt** %9, align 8
  %67 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 (i8*, i8*, ...) @auth_debug_add(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  store i32 -1, i32* %6, align 4
  br label %140

75:                                               ; preds = %65, %62
  %76 = load %struct.sshauthopt*, %struct.sshauthopt** %9, align 8
  %77 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %109

80:                                               ; preds = %75
  %81 = load i8*, i8** %13, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load %struct.sshauthopt*, %struct.sshauthopt** %9, align 8
  %84 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @match_host_and_ip(i8* %81, i8* %82, i32* %85)
  switch i32 %86, label %89 [
    i32 1, label %87
    i32 -1, label %88
    i32 0, label %94
  ]

87:                                               ; preds = %80
  br label %108

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %80, %88
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 (i8*, i8*, ...) @auth_debug_add(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %80, %89
  %95 = load i8*, i8** %11, align 8
  %96 = load %struct.passwd*, %struct.passwd** %8, align 8
  %97 = getelementptr inbounds %struct.passwd, %struct.passwd* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %13, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load %struct.sshauthopt*, %struct.sshauthopt** %9, align 8
  %102 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 (i8*, i8*, i32, i8*, ...) @logit(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.4, i64 0, i64 0), i8* %95, i32 %98, i8* %99, i8* %100, i32* %103)
  %105 = load i8*, i8** %11, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 (i8*, i8*, ...) @auth_debug_add(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i8* %105, i8* %106)
  store i32 -1, i32* %6, align 4
  br label %140

108:                                              ; preds = %87
  br label %109

109:                                              ; preds = %108, %75
  %110 = load %struct.sshauthopt*, %struct.sshauthopt** %9, align 8
  %111 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %136

114:                                              ; preds = %109
  %115 = load i8*, i8** %12, align 8
  %116 = load %struct.sshauthopt*, %struct.sshauthopt** %9, align 8
  %117 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @addr_match_cidr_list(i8* %115, i32* %118)
  switch i32 %119, label %122 [
    i32 1, label %120
    i32 -1, label %121
    i32 0, label %125
  ]

120:                                              ; preds = %114
  br label %135

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %114, %121
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %114, %122
  %126 = load i8*, i8** %11, align 8
  %127 = load %struct.passwd*, %struct.passwd** %8, align 8
  %128 = getelementptr inbounds %struct.passwd, %struct.passwd* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i8*, i8** %12, align 8
  %131 = call i32 (i8*, i8*, i32, i8*, ...) @logit(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.7, i64 0, i64 0), i8* %126, i32 %129, i8* %130)
  %132 = load i8*, i8** %11, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 (i8*, i8*, ...) @auth_debug_add(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.8, i64 0, i64 0), i8* %132, i8* %133)
  store i32 -1, i32* %6, align 4
  br label %140

135:                                              ; preds = %120
  br label %136

136:                                              ; preds = %135, %109
  %137 = load i8*, i8** %11, align 8
  %138 = load %struct.sshauthopt*, %struct.sshauthopt** %9, align 8
  %139 = call i32 @auth_log_authopts(i8* %137, %struct.sshauthopt* %138, i32 1)
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %136, %125, %94, %70, %57, %35
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i8* @ssh_remote_ipaddr(%struct.ssh*) #1

declare dso_local i8* @auth_get_canonical_hostname(%struct.ssh*, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @format_absolute_time(i64, i8*, i32) #1

declare dso_local i32 @debug(i8*, i8*, ...) #1

declare dso_local i32 @auth_debug_add(i8*, i8*, ...) #1

declare dso_local i32 @match_host_and_ip(i8*, i8*, i32*) #1

declare dso_local i32 @logit(i8*, i8*, i32, i8*, ...) #1

declare dso_local i32 @addr_match_cidr_list(i8*, i32*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @auth_log_authopts(i8*, %struct.sshauthopt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
