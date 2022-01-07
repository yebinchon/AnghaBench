; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_fallback_get_hosts.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_fallback_get_hosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_krbhst_data = type { i32, i32, i32 }
%struct.addrinfo = type { i32 }
%struct.krb5_krbhst_info = type { i32, i32, i32, i8*, %struct.addrinfo* }

@NI_MAXSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"fallback lookup %d for realm %s (service %s)\00", align 1
@KD_FALLBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s.%s.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s-%d.%s.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.krb5_krbhst_data*, i8*, i32, i32)* @fallback_get_hosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fallback_get_hosts(i32 %0, %struct.krb5_krbhst_data* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.krb5_krbhst_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca %struct.addrinfo, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.krb5_krbhst_info*, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.krb5_krbhst_data* %1, %struct.krb5_krbhst_data** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %21 = load i32, i32* @NI_MAXSERV, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %8, align 8
  %27 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %8, align 8
  %30 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @_krb5_debug(i32 %25, i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i8* %32)
  %34 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %8, align 8
  %35 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 5
  br i1 %37, label %38, label %44

38:                                               ; preds = %5
  %39 = load i32, i32* @KD_FALLBACK, align 4
  %40 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %8, align 8
  %41 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %136

44:                                               ; preds = %5
  %45 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %8, align 8
  %46 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %8, align 8
  %52 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8**, i8*, i8*, i32, ...) @asprintf(i8** %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %50, i32 %53)
  store i32 %54, i32* %13, align 4
  br label %64

55:                                               ; preds = %44
  %56 = load i8*, i8** %9, align 8
  %57 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %8, align 8
  %58 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %8, align 8
  %61 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8**, i8*, i8*, i32, ...) @asprintf(i8** %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %56, i32 %59, i32 %62)
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %55, %49
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i8*, i8** %12, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67, %64
  %71 = load i32, i32* @ENOMEM, align 4
  store i32 %71, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %136

72:                                               ; preds = %67
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @make_hints(%struct.addrinfo* %15, i32 %73)
  %75 = trunc i64 %22 to i32
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @snprintf(i8* %24, i32 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @getaddrinfo(i8* %78, i8* %24, %struct.addrinfo* %15, %struct.addrinfo** %14)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %72
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i32, i32* @KD_FALLBACK, align 4
  %86 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %8, align 8
  %87 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %135

90:                                               ; preds = %72
  %91 = load i8*, i8** %12, align 8
  %92 = call i64 @strlen(i8* %91)
  store i64 %92, i64* %20, align 8
  %93 = load i64, i64* %20, align 8
  %94 = add i64 32, %93
  %95 = trunc i64 %94 to i32
  %96 = call %struct.krb5_krbhst_info* @calloc(i32 1, i32 %95)
  store %struct.krb5_krbhst_info* %96, %struct.krb5_krbhst_info** %19, align 8
  %97 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %19, align 8
  %98 = icmp eq %struct.krb5_krbhst_info* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load i8*, i8** %12, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i32, i32* @ENOMEM, align 4
  store i32 %102, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %136

103:                                              ; preds = %90
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %19, align 8
  %106 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %19, align 8
  %109 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %19, align 8
  %111 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %110, i32 0, i32 1
  store i32 %107, i32* %111, align 4
  %112 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %113 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %19, align 8
  %114 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %113, i32 0, i32 4
  store %struct.addrinfo* %112, %struct.addrinfo** %114, align 8
  %115 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %19, align 8
  %116 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = load i64, i64* %20, align 8
  %120 = call i32 @memmove(i8* %117, i8* %118, i64 %119)
  %121 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %19, align 8
  %122 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = load i64, i64* %20, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8 0, i8* %125, align 1
  %126 = load i8*, i8** %12, align 8
  %127 = call i32 @free(i8* %126)
  %128 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %8, align 8
  %129 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %19, align 8
  %130 = call i32 @append_host_hostinfo(%struct.krb5_krbhst_data* %128, %struct.krb5_krbhst_info* %129)
  %131 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %8, align 8
  %132 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %103, %82
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %136

136:                                              ; preds = %135, %99, %70, %38
  %137 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_krb5_debug(i32, i32, i8*, i32, i32, i8*) #2

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32, ...) #2

declare dso_local i32 @make_hints(%struct.addrinfo*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local %struct.krb5_krbhst_info* @calloc(i32, i32) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i32 @append_host_hostinfo(%struct.krb5_krbhst_data*, %struct.krb5_krbhst_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
