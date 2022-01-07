; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_inform_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_inform_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zone = type { i32, i32 }
%struct.query_info = type { i32, i32, i32 }
%struct.comm_reply = type { i32, i32 }
%struct.sockaddr_in = type { i32 }

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s %s %s@%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.local_zone*, %struct.query_info*, %struct.comm_reply*)* @lz_inform_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lz_inform_print(%struct.local_zone* %0, %struct.query_info* %1, %struct.comm_reply* %2) #0 {
  %4 = alloca %struct.local_zone*, align 8
  %5 = alloca %struct.query_info*, align 8
  %6 = alloca %struct.comm_reply*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca [512 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.local_zone* %0, %struct.local_zone** %4, align 8
  store %struct.query_info* %1, %struct.query_info** %5, align 8
  store %struct.comm_reply* %2, %struct.comm_reply** %6, align 8
  %12 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load %struct.comm_reply*, %struct.comm_reply** %6, align 8
  %18 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %17, i32 0, i32 1
  %19 = bitcast i32* %18 to %struct.sockaddr_in*
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ntohs(i32 %21)
  store i64 %22, i64* %11, align 8
  %23 = load %struct.local_zone*, %struct.local_zone** %4, align 8
  %24 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dname_str(i32 %25, i8* %16)
  %27 = load %struct.comm_reply*, %struct.comm_reply** %6, align 8
  %28 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %27, i32 0, i32 1
  %29 = load %struct.comm_reply*, %struct.comm_reply** %6, align 8
  %30 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %33 = call i32 @addr_to_str(i32* %28, i32 %31, i8* %32, i32 128)
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %35 = load %struct.local_zone*, %struct.local_zone** %4, align 8
  %36 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @local_zone_type2str(i32 %37)
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %40 = load i64, i64* %11, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @snprintf(i8* %34, i32 512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %38, i8* %39, i32 %41)
  %43 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %44 = load %struct.query_info*, %struct.query_info** %5, align 8
  %45 = getelementptr inbounds %struct.query_info, %struct.query_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.query_info*, %struct.query_info** %5, align 8
  %48 = getelementptr inbounds %struct.query_info, %struct.query_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.query_info*, %struct.query_info** %5, align 8
  %51 = getelementptr inbounds %struct.query_info, %struct.query_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @log_nametypeclass(i32 0, i8* %43, i32 %46, i32 %49, i32 %52)
  %54 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %54)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ntohs(i32) #2

declare dso_local i32 @dname_str(i32, i8*) #2

declare dso_local i32 @addr_to_str(i32*, i32, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, i32) #2

declare dso_local i8* @local_zone_type2str(i32) #2

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
