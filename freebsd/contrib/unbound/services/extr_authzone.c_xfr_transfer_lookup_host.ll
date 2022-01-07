; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_transfer_lookup_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_transfer_lookup_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, %struct.auth_master* }
%struct.auth_master = type { i32, i64 }
%struct.module_env = type { i32, i32* }
%struct.sockaddr_storage = type { i32 }
%struct.query_info = type { i32, i32*, i32, i32, i32* }
%struct.edns_data = type { i32, i32, i32*, i32, i64, i64 }

@BIT_RD = common dso_local global i32 0, align 4
@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cannot parse host name of master %s\00", align 1
@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"auth zone %s: master lookup for task_transfer\00", align 1
@EDNS_DO = common dso_local global i32 0, align 4
@auth_xfer_transfer_lookup_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"out of memory lookup up master %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_xfer*, %struct.module_env*)* @xfr_transfer_lookup_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfr_transfer_lookup_host(%struct.auth_xfer* %0, %struct.module_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auth_xfer*, align 8
  %5 = alloca %struct.module_env*, align 8
  %6 = alloca %struct.sockaddr_storage, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.auth_master*, align 8
  %9 = alloca %struct.query_info, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.edns_data, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [512 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.auth_xfer* %0, %struct.auth_xfer** %4, align 8
  store %struct.module_env* %1, %struct.module_env** %5, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %20 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.auth_master*, %struct.auth_master** %22, align 8
  store %struct.auth_master* %23, %struct.auth_master** %8, align 8
  %24 = load i32, i32* @BIT_RD, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %11, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %12, align 8
  %30 = load %struct.module_env*, %struct.module_env** %5, align 8
  %31 = getelementptr inbounds %struct.module_env, %struct.module_env* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %14, align 8
  %33 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %34 = icmp ne %struct.auth_master* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %142

36:                                               ; preds = %2
  %37 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %38 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @extstrtoaddr(i32 %39, %struct.sockaddr_storage* %6, i32* %7)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %142

43:                                               ; preds = %36
  %44 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %45 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %142

49:                                               ; preds = %43
  %50 = mul nuw i64 4, %27
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %54 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 0
  %57 = call i64 @sldns_str2wire_dname_buf(i32 %55, i32* %29, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %61 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %142

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 4
  store i32* %29, i32** %65, align 8
  %66 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %67 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 3
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %71 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 2
  store i32 %70, i32* %71, align 8
  %72 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %73 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %64
  %79 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %80 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 2
  store i32 %79, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %64
  %82 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 1
  store i32* null, i32** %82, align 8
  %83 = load i64, i64* @verbosity, align 8
  %84 = load i64, i64* @VERB_ALGO, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %81
  %87 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %88 = add nsw i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = call i8* @llvm.stacksave()
  store i8* %90, i8** %17, align 8
  %91 = alloca i8, i64 %89, align 16
  store i64 %89, i64* %18, align 8
  %92 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %93 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dname_str(i32 %94, i8* %91)
  %96 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %97 = call i32 @snprintf(i8* %96, i32 512, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %91)
  %98 = load i64, i64* @VERB_ALGO, align 8
  %99 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %100 = call i32 @log_query_info(i64 %98, i8* %99, %struct.query_info* %9)
  %101 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %101)
  br label %102

102:                                              ; preds = %86, %81
  %103 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %13, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %13, i32 0, i32 5
  store i64 0, i64* %104, align 8
  %105 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %13, i32 0, i32 4
  store i64 0, i64* %105, align 8
  %106 = load i32, i32* @EDNS_DO, align 4
  %107 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %13, i32 0, i32 3
  store i32 %106, i32* %107, align 8
  %108 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %13, i32 0, i32 2
  store i32* null, i32** %108, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = call i32 @sldns_buffer_capacity(i32* %109)
  %111 = icmp slt i32 %110, 65535
  br i1 %111, label %112, label %116

112:                                              ; preds = %102
  %113 = load i32*, i32** %14, align 8
  %114 = call i32 @sldns_buffer_capacity(i32* %113)
  %115 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %13, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  br label %118

116:                                              ; preds = %102
  %117 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %13, i32 0, i32 1
  store i32 65535, i32* %117, align 4
  br label %118

118:                                              ; preds = %116, %112
  %119 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %120 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %119, i32 0, i32 0
  %121 = call i32 @lock_basic_unlock(i32* %120)
  %122 = load %struct.module_env*, %struct.module_env** %5, align 8
  %123 = getelementptr inbounds %struct.module_env, %struct.module_env* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i32*, i32** %14, align 8
  %127 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %128 = call i32 @mesh_new_callback(i32 %124, %struct.query_info* %9, i32 %125, %struct.edns_data* %13, i32* %126, i32 0, i32* @auth_xfer_transfer_lookup_callback, %struct.auth_xfer* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %118
  %131 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %132 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %131, i32 0, i32 0
  %133 = call i32 @lock_basic_lock(i32* %132)
  %134 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %135 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %142

138:                                              ; preds = %118
  %139 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %140 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %139, i32 0, i32 0
  %141 = call i32 @lock_basic_lock(i32* %140)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %142

142:                                              ; preds = %138, %130, %59, %48, %42, %35
  %143 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @extstrtoaddr(i32, %struct.sockaddr_storage*, i32*) #2

declare dso_local i64 @sldns_str2wire_dname_buf(i32, i32*, i32*) #2

declare dso_local i32 @log_err(i8*, i32) #2

declare dso_local i32 @dname_str(i32, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @log_query_info(i64, i8*, %struct.query_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @sldns_buffer_capacity(i32*) #2

declare dso_local i32 @lock_basic_unlock(i32*) #2

declare dso_local i32 @mesh_new_callback(i32, %struct.query_info*, i32, %struct.edns_data*, i32*, i32, i32*, %struct.auth_xfer*) #2

declare dso_local i32 @lock_basic_lock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
