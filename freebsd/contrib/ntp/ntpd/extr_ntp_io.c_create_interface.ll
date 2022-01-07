; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_create_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_create_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface = type { i64, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [25 x i8] c"create_interface(%s#%d)\0A\00", align 1
@INVALID_SOCKET = common dso_local global i64 0, align 8
@INT_BROADCAST = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Listening on broadcast address %s#%d\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"unable to create socket on %s (%d) for %s#%d\00", align 1
@RESTRICT_FLAGS = common dso_local global i32 0, align 4
@RESM_NTPONLY = common dso_local global i32 0, align 4
@RESM_INTERFACE = common dso_local global i32 0, align 4
@RES_IGNORE = common dso_local global i32 0, align 4
@loopback_interface = common dso_local global %struct.interface* null, align 8
@AF_INET = common dso_local global i64 0, align 8
@INT_LOOPBACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"created \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@INT_MULTICAST = common dso_local global i32 0, align 4
@INT_WILDCARD = common dso_local global i32 0, align 4
@remoteaddr_list = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.interface* (i32, %struct.interface*)* @create_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.interface* @create_interface(i32 %0, %struct.interface* %1) #0 {
  %3 = alloca %struct.interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.interface*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.interface* %1, %struct.interface** %5, align 8
  %8 = load %struct.interface*, %struct.interface** %5, align 8
  %9 = getelementptr inbounds %struct.interface, %struct.interface* %8, i32 0, i32 4
  %10 = call i32 @stoa(i32* %9)
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @DPRINTF(i32 2, i8* %13)
  %15 = load %struct.interface*, %struct.interface** %5, align 8
  %16 = call %struct.interface* @new_interface(%struct.interface* %15)
  store %struct.interface* %16, %struct.interface** %7, align 8
  %17 = load %struct.interface*, %struct.interface** %7, align 8
  %18 = getelementptr inbounds %struct.interface, %struct.interface* %17, i32 0, i32 4
  %19 = load %struct.interface*, %struct.interface** %7, align 8
  %20 = call i64 @open_socket(i32* %18, i32 0, i32 0, %struct.interface* %19)
  %21 = load %struct.interface*, %struct.interface** %7, align 8
  %22 = getelementptr inbounds %struct.interface, %struct.interface* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.interface*, %struct.interface** %7, align 8
  %24 = getelementptr inbounds %struct.interface, %struct.interface* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @INVALID_SOCKET, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.interface*, %struct.interface** %7, align 8
  %30 = call i32 @log_listen_address(%struct.interface* %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i32, i32* @INT_BROADCAST, align 4
  %33 = load %struct.interface*, %struct.interface** %7, align 8
  %34 = getelementptr inbounds %struct.interface, %struct.interface* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load %struct.interface*, %struct.interface** %7, align 8
  %40 = getelementptr inbounds %struct.interface, %struct.interface* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @INVALID_SOCKET, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* @LOG_INFO, align 4
  %46 = load %struct.interface*, %struct.interface** %7, align 8
  %47 = getelementptr inbounds %struct.interface, %struct.interface* %46, i32 0, i32 8
  %48 = call i32 @stoa(i32* %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i32, i8*, i32, i32, ...) @msyslog(i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %38, %31
  %52 = load i64, i64* @INVALID_SOCKET, align 8
  %53 = load %struct.interface*, %struct.interface** %7, align 8
  %54 = getelementptr inbounds %struct.interface, %struct.interface* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  %58 = load i64, i64* @INVALID_SOCKET, align 8
  %59 = load %struct.interface*, %struct.interface** %7, align 8
  %60 = getelementptr inbounds %struct.interface, %struct.interface* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %57
  %64 = load i32, i32* @LOG_ERR, align 4
  %65 = load %struct.interface*, %struct.interface** %7, align 8
  %66 = getelementptr inbounds %struct.interface, %struct.interface* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.interface*, %struct.interface** %7, align 8
  %69 = getelementptr inbounds %struct.interface, %struct.interface* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.interface*, %struct.interface** %7, align 8
  %72 = getelementptr inbounds %struct.interface, %struct.interface* %71, i32 0, i32 4
  %73 = call i32 @stoa(i32* %72)
  %74 = load i32, i32* %4, align 4
  %75 = call i32 (i32, i8*, i32, i32, ...) @msyslog(i32 %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %70, i32 %73, i32 %74)
  %76 = load %struct.interface*, %struct.interface** %7, align 8
  %77 = call i32 @delete_interface(%struct.interface* %76)
  store %struct.interface* null, %struct.interface** %3, align 8
  br label %118

78:                                               ; preds = %57, %51
  %79 = load %struct.interface*, %struct.interface** %7, align 8
  %80 = getelementptr inbounds %struct.interface, %struct.interface* %79, i32 0, i32 4
  %81 = call i64 @AF(i32* %80)
  %82 = call i32 @SET_HOSTMASK(i32* %6, i64 %81)
  %83 = load i32, i32* @RESTRICT_FLAGS, align 4
  %84 = load %struct.interface*, %struct.interface** %7, align 8
  %85 = getelementptr inbounds %struct.interface, %struct.interface* %84, i32 0, i32 4
  %86 = load i32, i32* @RESM_NTPONLY, align 4
  %87 = load i32, i32* @RESM_INTERFACE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @RES_IGNORE, align 4
  %90 = call i32 @hack_restrict(i32 %83, i32* %85, i32* %6, i32 -4, i32 %88, i32 %89, i32 0)
  %91 = load %struct.interface*, %struct.interface** @loopback_interface, align 8
  %92 = icmp eq %struct.interface* null, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %78
  %94 = load i64, i64* @AF_INET, align 8
  %95 = load %struct.interface*, %struct.interface** %7, align 8
  %96 = getelementptr inbounds %struct.interface, %struct.interface* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %94, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load i32, i32* @INT_LOOPBACK, align 4
  %101 = load %struct.interface*, %struct.interface** %7, align 8
  %102 = getelementptr inbounds %struct.interface, %struct.interface* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load %struct.interface*, %struct.interface** %7, align 8
  store %struct.interface* %107, %struct.interface** @loopback_interface, align 8
  br label %108

108:                                              ; preds = %106, %99, %93, %78
  %109 = load %struct.interface*, %struct.interface** %7, align 8
  %110 = getelementptr inbounds %struct.interface, %struct.interface* %109, i32 0, i32 4
  %111 = load %struct.interface*, %struct.interface** %7, align 8
  %112 = call i32 @add_addr_to_list(i32* %110, %struct.interface* %111)
  %113 = load %struct.interface*, %struct.interface** %7, align 8
  %114 = call i32 @add_interface(%struct.interface* %113)
  %115 = load %struct.interface*, %struct.interface** %7, align 8
  %116 = call i32 @DPRINT_INTERFACE(i32 2, %struct.interface* bitcast ([2 x i8]* @.str.4 to %struct.interface*))
  %117 = load %struct.interface*, %struct.interface** %7, align 8
  store %struct.interface* %117, %struct.interface** %3, align 8
  br label %118

118:                                              ; preds = %108, %63
  %119 = load %struct.interface*, %struct.interface** %3, align 8
  ret %struct.interface* %119
}

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @stoa(i32*) #1

declare dso_local %struct.interface* @new_interface(%struct.interface*) #1

declare dso_local i64 @open_socket(i32*, i32, i32, %struct.interface*) #1

declare dso_local i32 @log_listen_address(%struct.interface*) #1

declare dso_local i32 @msyslog(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @delete_interface(%struct.interface*) #1

declare dso_local i32 @SET_HOSTMASK(i32*, i64) #1

declare dso_local i64 @AF(i32*) #1

declare dso_local i32 @hack_restrict(i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @add_addr_to_list(i32*, %struct.interface*) #1

declare dso_local i32 @add_interface(%struct.interface*) #1

declare dso_local i32 @DPRINT_INTERFACE(i32, %struct.interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
