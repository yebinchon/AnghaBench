; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_inform_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_inform_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.respip_addr_info = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.local_rrset = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.comm_reply = type { i32, %struct.TYPE_6__ }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"%s/%d inform %s@%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @respip_inform_print(%struct.respip_addr_info* %0, i32* %1, i32 %2, i32 %3, %struct.local_rrset* %4, %struct.comm_reply* %5) #0 {
  %7 = alloca %struct.respip_addr_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.local_rrset*, align 8
  %12 = alloca %struct.comm_reply*, align 8
  %13 = alloca [128 x i8], align 16
  %14 = alloca [128 x i8], align 16
  %15 = alloca [512 x i8], align 16
  %16 = alloca i32, align 4
  store %struct.respip_addr_info* %0, %struct.respip_addr_info** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.local_rrset* %4, %struct.local_rrset** %11, align 8
  store %struct.comm_reply* %5, %struct.comm_reply** %12, align 8
  %17 = load %struct.local_rrset*, %struct.local_rrset** %11, align 8
  %18 = icmp ne %struct.local_rrset* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %6
  %20 = load %struct.local_rrset*, %struct.local_rrset** %11, align 8
  %21 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %8, align 8
  br label %26

26:                                               ; preds = %19, %6
  %27 = load %struct.comm_reply*, %struct.comm_reply** %12, align 8
  %28 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_INET, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.comm_reply*, %struct.comm_reply** %12, align 8
  %35 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %34, i32 0, i32 1
  %36 = bitcast %struct.TYPE_6__* %35 to %struct.sockaddr_in*
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @ntohs(i32 %38)
  br label %47

40:                                               ; preds = %26
  %41 = load %struct.comm_reply*, %struct.comm_reply** %12, align 8
  %42 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %41, i32 0, i32 1
  %43 = bitcast %struct.TYPE_6__* %42 to %struct.sockaddr_in6*
  %44 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @ntohs(i32 %45)
  br label %47

47:                                               ; preds = %40, %33
  %48 = phi i64 [ %39, %33 ], [ %46, %40 ]
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %16, align 4
  %50 = load %struct.comm_reply*, %struct.comm_reply** %12, align 8
  %51 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %50, i32 0, i32 1
  %52 = load %struct.comm_reply*, %struct.comm_reply** %12, align 8
  %53 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %56 = call i32 @addr_to_str(%struct.TYPE_6__* %51, i32 %54, i8* %55, i32 128)
  %57 = load %struct.respip_addr_info*, %struct.respip_addr_info** %7, align 8
  %58 = getelementptr inbounds %struct.respip_addr_info, %struct.respip_addr_info* %57, i32 0, i32 2
  %59 = load %struct.respip_addr_info*, %struct.respip_addr_info** %7, align 8
  %60 = getelementptr inbounds %struct.respip_addr_info, %struct.respip_addr_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %63 = call i32 @addr_to_str(%struct.TYPE_6__* %58, i32 %61, i8* %62, i32 128)
  %64 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %66 = load %struct.respip_addr_info*, %struct.respip_addr_info** %7, align 8
  %67 = getelementptr inbounds %struct.respip_addr_info, %struct.respip_addr_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @snprintf(i8* %64, i32 512, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %65, i32 %68, i8* %69, i32 %70)
  %72 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @log_nametypeclass(i32 0, i8* %72, i32* %73, i32 %74, i32 %75)
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @addr_to_str(%struct.TYPE_6__*, i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
