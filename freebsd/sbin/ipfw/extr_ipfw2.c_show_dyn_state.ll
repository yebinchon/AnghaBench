; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_show_dyn_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_show_dyn_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdline_opts = type { i64 }
%struct.format_opts = type { i64, i64, i32 }
%struct.buf_pr = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i64, i32, i32, i8*, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.protoent = type { i32 }
%struct.in_addr = type { i8* }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%05d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(%ds)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" PARENT %d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" LIMIT\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" STATE\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" proto %u\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" %s %d\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" <-> %s %d\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c" UNKNOWN <-> UNKNOWN\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" :%s\00", align 1
@IPFW_TLV_STATE_NAME = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c" state 0x%08x%s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c",\00", align 1
@IPFW_DYN_ORPHANED = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"ORPHANED,\00", align 1
@TH_SYN = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"BOTH_SYN,\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"F_SYN,\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"R_SYN,\00", align 1
@TH_FIN = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"BOTH_FIN,\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"F_FIN,\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"R_FIN,\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c" f_ack 0x%x, r_ack 0x%x\00", align 1
@BOTH_FIN = common dso_local global i32 0, align 4
@BOTH_SYN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdline_opts*, %struct.format_opts*, %struct.buf_pr*, %struct.TYPE_5__*)* @show_dyn_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_dyn_state(%struct.cmdline_opts* %0, %struct.format_opts* %1, %struct.buf_pr* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca %struct.cmdline_opts*, align 8
  %6 = alloca %struct.format_opts*, align 8
  %7 = alloca %struct.buf_pr*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.protoent*, align 8
  %10 = alloca %struct.in_addr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.cmdline_opts* %0, %struct.cmdline_opts** %5, align 8
  store %struct.format_opts* %1, %struct.format_opts** %6, align 8
  store %struct.buf_pr* %2, %struct.buf_pr** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %15 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 128
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %14, align 4
  br label %305

29:                                               ; preds = %23, %4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 10
  %32 = call i32 @bcopy(i32* %31, i32* %11, i32 4)
  %33 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.format_opts*, %struct.format_opts** %6, align 8
  %37 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %29
  %41 = load %struct.format_opts*, %struct.format_opts** %6, align 8
  %42 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %40, %29
  %46 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %47 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 9
  %51 = load %struct.format_opts*, %struct.format_opts** %6, align 8
  %52 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @pr_u64(%struct.buf_pr* %48, i32* %50, i64 %53)
  %55 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 8
  %58 = load %struct.format_opts*, %struct.format_opts** %6, align 8
  %59 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @pr_u64(%struct.buf_pr* %55, i32* %57, i64 %60)
  %62 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %65)
  br label %67

67:                                               ; preds = %45, %40
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %83 [
    i32 128, label %71
    i32 129, label %77
    i32 130, label %80
  ]

71:                                               ; preds = %67
  %72 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %83

77:                                               ; preds = %67
  %78 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %79 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %83

80:                                               ; preds = %67
  %81 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %82 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %83

83:                                               ; preds = %67, %80, %77, %71
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = call %struct.protoent* @getprotobynumber(i32 %87)
  store %struct.protoent* %88, %struct.protoent** %9, align 8
  %89 = icmp ne %struct.protoent* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %92 = load %struct.protoent*, %struct.protoent** %9, align 8
  %93 = getelementptr inbounds %struct.protoent, %struct.protoent* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  br label %103

96:                                               ; preds = %83
  %97 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %96, %90
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 4
  br i1 %108, label %109, label %140

109:                                              ; preds = %103
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @htonl(i32 %113)
  %115 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  store i8* %114, i8** %115, align 8
  %116 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %117 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @inet_ntoa(i8* %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %119, i8* %123)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = call i8* @htonl(i32 %128)
  %130 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  store i8* %129, i8** %130, align 8
  %131 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %132 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @inet_ntoa(i8* %133)
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %134, i8* %138)
  br label %175

140:                                              ; preds = %103
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 6
  br i1 %145, label %146, label %171

146:                                              ; preds = %140
  %147 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %148 = load i32, i32* @AF_INET6, align 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 4
  %152 = trunc i64 %16 to i32
  %153 = call i32 @inet_ntop(i32 %148, i32* %151, i8* %18, i32 %152)
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %147, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %153, i8* %157)
  %159 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %160 = load i32, i32* @AF_INET6, align 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  %164 = trunc i64 %16 to i32
  %165 = call i32 @inet_ntop(i32 %160, i32* %163, i8* %18, i32 %164)
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 6
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %159, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %165, i8* %169)
  br label %174

171:                                              ; preds = %140
  %172 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %173 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %172, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %146
  br label %175

175:                                              ; preds = %174, %109
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %175
  %181 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %182 = load %struct.format_opts*, %struct.format_opts** %6, align 8
  %183 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* @IPFW_TLV_STATE_NAME, align 4
  %189 = call i32 @object_search_ctlv(i32 %184, i64 %187, i32 %188)
  %190 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %189)
  br label %191

191:                                              ; preds = %180, %175
  %192 = load %struct.cmdline_opts*, %struct.cmdline_opts** %5, align 8
  %193 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %304

196:                                              ; preds = %191
  %197 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %207 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %197, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %200, i8* %206)
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @IPFW_DYN_ORPHANED, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %196
  %215 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %216 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %215, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %196
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @TH_SYN, align 4
  %222 = load i32, i32* @TH_SYN, align 4
  %223 = shl i32 %222, 8
  %224 = or i32 %221, %223
  %225 = and i32 %220, %224
  %226 = load i32, i32* @TH_SYN, align 4
  %227 = load i32, i32* @TH_SYN, align 4
  %228 = shl i32 %227, 8
  %229 = or i32 %226, %228
  %230 = icmp eq i32 %225, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %217
  %232 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %233 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %232, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  br label %256

234:                                              ; preds = %217
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @TH_SYN, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %234
  %242 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %243 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %242, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %244

244:                                              ; preds = %241, %234
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @TH_SYN, align 4
  %249 = shl i32 %248, 8
  %250 = and i32 %247, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %244
  %253 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %254 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %253, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %255

255:                                              ; preds = %252, %244
  br label %256

256:                                              ; preds = %255, %231
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @TH_FIN, align 4
  %261 = load i32, i32* @TH_FIN, align 4
  %262 = shl i32 %261, 8
  %263 = or i32 %260, %262
  %264 = and i32 %259, %263
  %265 = load i32, i32* @TH_FIN, align 4
  %266 = load i32, i32* @TH_FIN, align 4
  %267 = shl i32 %266, 8
  %268 = or i32 %265, %267
  %269 = icmp eq i32 %264, %268
  br i1 %269, label %270, label %273

270:                                              ; preds = %256
  %271 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %272 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  br label %295

273:                                              ; preds = %256
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @TH_FIN, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %273
  %281 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %282 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %281, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  br label %283

283:                                              ; preds = %280, %273
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @TH_FIN, align 4
  %288 = shl i32 %287, 8
  %289 = and i32 %286, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %283
  %292 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %293 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %292, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  br label %294

294:                                              ; preds = %291, %283
  br label %295

295:                                              ; preds = %294, %270
  %296 = load %struct.buf_pr*, %struct.buf_pr** %7, align 8
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 5
  %302 = load i8*, i8** %301, align 8
  %303 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %296, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i32 %299, i8* %302)
  br label %304

304:                                              ; preds = %295, %191
  store i32 0, i32* %14, align 4
  br label %305

305:                                              ; preds = %304, %28
  %306 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %306)
  %307 = load i32, i32* %14, align 4
  switch i32 %307, label %309 [
    i32 0, label %308
    i32 1, label %308
  ]

308:                                              ; preds = %305, %305
  ret void

309:                                              ; preds = %305
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #2

declare dso_local i32 @bprintf(%struct.buf_pr*, i8*, ...) #2

declare dso_local i32 @pr_u64(%struct.buf_pr*, i32*, i64) #2

declare dso_local %struct.protoent* @getprotobynumber(i32) #2

declare dso_local i8* @htonl(i32) #2

declare dso_local i32 @inet_ntoa(i8*) #2

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #2

declare dso_local i32 @object_search_ctlv(i32, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
