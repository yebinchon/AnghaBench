; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_probe_lookup_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_probe_lookup_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, %struct.auth_master* }
%struct.auth_master = type { i32, i32, i64 }
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
@.str.1 = private unnamed_addr constant [43 x i8] c"auth zone %s: master lookup for task_probe\00", align 1
@EDNS_DO = common dso_local global i32 0, align 4
@auth_xfer_probe_lookup_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"out of memory lookup up master %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_xfer*, %struct.module_env*)* @xfr_probe_lookup_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfr_probe_lookup_host(%struct.auth_xfer* %0, %struct.module_env* %1) #0 {
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
  br label %163

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
  br label %163

43:                                               ; preds = %36
  %44 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %45 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %43
  %49 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %50 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %48
  %54 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %55 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32* @strchr(i32 %56, i8 signext 47)
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %61 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32* @strchr(i32 %62, i8 signext 47)
  %64 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %65 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32* @strrchr(i32 %66, i8 signext 47)
  %68 = icmp eq i32* %63, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %163

70:                                               ; preds = %59, %53, %48, %43
  %71 = mul nuw i64 4, %27
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 0
  store i32 %72, i32* %73, align 8
  %74 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %75 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 0
  %78 = call i64 @sldns_str2wire_dname_buf(i32 %76, i32* %29, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %82 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %83)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %163

85:                                               ; preds = %70
  %86 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 4
  store i32* %29, i32** %86, align 8
  %87 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %88 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 3
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %92 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 2
  store i32 %91, i32* %92, align 8
  %93 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %94 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %85
  %100 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %101 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 2
  store i32 %100, i32* %101, align 8
  br label %102

102:                                              ; preds = %99, %85
  %103 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 1
  store i32* null, i32** %103, align 8
  %104 = load i64, i64* @verbosity, align 8
  %105 = load i64, i64* @VERB_ALGO, align 8
  %106 = icmp sge i64 %104, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %102
  %108 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %109 = add nsw i32 %108, 1
  %110 = zext i32 %109 to i64
  %111 = call i8* @llvm.stacksave()
  store i8* %111, i8** %17, align 8
  %112 = alloca i8, i64 %110, align 16
  store i64 %110, i64* %18, align 8
  %113 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %114 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dname_str(i32 %115, i8* %112)
  %117 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %118 = call i32 @snprintf(i8* %117, i32 512, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %112)
  %119 = load i64, i64* @VERB_ALGO, align 8
  %120 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %121 = call i32 @log_query_info(i64 %119, i8* %120, %struct.query_info* %9)
  %122 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %122)
  br label %123

123:                                              ; preds = %107, %102
  %124 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %13, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %13, i32 0, i32 5
  store i64 0, i64* %125, align 8
  %126 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %13, i32 0, i32 4
  store i64 0, i64* %126, align 8
  %127 = load i32, i32* @EDNS_DO, align 4
  %128 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %13, i32 0, i32 3
  store i32 %127, i32* %128, align 8
  %129 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %13, i32 0, i32 2
  store i32* null, i32** %129, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = call i32 @sldns_buffer_capacity(i32* %130)
  %132 = icmp slt i32 %131, 65535
  br i1 %132, label %133, label %137

133:                                              ; preds = %123
  %134 = load i32*, i32** %14, align 8
  %135 = call i32 @sldns_buffer_capacity(i32* %134)
  %136 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %13, i32 0, i32 1
  store i32 %135, i32* %136, align 4
  br label %139

137:                                              ; preds = %123
  %138 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %13, i32 0, i32 1
  store i32 65535, i32* %138, align 4
  br label %139

139:                                              ; preds = %137, %133
  %140 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %141 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %140, i32 0, i32 0
  %142 = call i32 @lock_basic_unlock(i32* %141)
  %143 = load %struct.module_env*, %struct.module_env** %5, align 8
  %144 = getelementptr inbounds %struct.module_env, %struct.module_env* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load i32*, i32** %14, align 8
  %148 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %149 = call i32 @mesh_new_callback(i32 %145, %struct.query_info* %9, i32 %146, %struct.edns_data* %13, i32* %147, i32 0, i32* @auth_xfer_probe_lookup_callback, %struct.auth_xfer* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %139
  %152 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %153 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %152, i32 0, i32 0
  %154 = call i32 @lock_basic_lock(i32* %153)
  %155 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %156 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %157)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %163

159:                                              ; preds = %139
  %160 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %161 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %160, i32 0, i32 0
  %162 = call i32 @lock_basic_lock(i32* %161)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %163

163:                                              ; preds = %159, %151, %80, %69, %42, %35
  %164 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @extstrtoaddr(i32, %struct.sockaddr_storage*, i32*) #2

declare dso_local i32* @strchr(i32, i8 signext) #2

declare dso_local i32* @strrchr(i32, i8 signext) #2

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
