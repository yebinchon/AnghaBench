; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_open_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_open_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_db_data = type { i32, i32*, i64 }
%struct.sockaddr_un = type { i64, i8* }
%struct.sockaddr = type { i32 }

@eap_sim_db_open_socket.counter = internal global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"unix:\00", align 1
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"socket(eap_sim_db): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"/tmp/eap_sim_db_%d-%d\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"bind(eap_sim_db): %s\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"connect(eap_sim_db): %s\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"HLR/AuC GW socket\00", align 1
@eap_sim_db_receive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sim_db_data*)* @eap_sim_db_open_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_sim_db_open_socket(%struct.eap_sim_db_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eap_sim_db_data*, align 8
  %4 = alloca %struct.sockaddr_un, align 8
  store %struct.eap_sim_db_data* %0, %struct.eap_sim_db_data** %3, align 8
  %5 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %6 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @os_strncmp(i64 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %127

11:                                               ; preds = %1
  %12 = load i32, i32* @PF_UNIX, align 4
  %13 = load i32, i32* @SOCK_DGRAM, align 4
  %14 = call i32 @socket(i32 %12, i32 %13, i32 0)
  %15 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %16 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %18 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 -1, i32* %2, align 4
  br label %127

26:                                               ; preds = %11
  %27 = call i32 @os_memset(%struct.sockaddr_un* %4, i32 0, i32 16)
  %28 = load i8*, i8** @AF_UNIX, align 8
  %29 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (...) @getpid()
  %33 = load i32, i32* @eap_sim_db_open_socket.counter, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @eap_sim_db_open_socket.counter, align 4
  %35 = call i32 @os_snprintf(i64 %31, i32 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %33)
  %36 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %37 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @os_free(i32* %38)
  %40 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32* @os_strdup(i64 %41)
  %43 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %44 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %46 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %26
  %50 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %51 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @close(i32 %52)
  %54 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %55 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  store i32 -1, i32* %2, align 4
  br label %127

56:                                               ; preds = %26
  %57 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %58 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = bitcast %struct.sockaddr_un* %4 to %struct.sockaddr*
  %61 = call i64 @bind(i32 %59, %struct.sockaddr* %60, i32 16)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load i32, i32* @MSG_INFO, align 4
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 @strerror(i32 %65)
  %67 = call i32 @wpa_printf(i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %69 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @close(i32 %70)
  %72 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %73 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %72, i32 0, i32 0
  store i32 -1, i32* %73, align 8
  store i32 -1, i32* %2, align 4
  br label %127

74:                                               ; preds = %56
  %75 = call i32 @os_memset(%struct.sockaddr_un* %4, i32 0, i32 16)
  %76 = load i8*, i8** @AF_UNIX, align 8
  %77 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 1
  store i8* %76, i8** %77, align 8
  %78 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %81 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 5
  %84 = call i32 @os_strlcpy(i64 %79, i64 %83, i32 8)
  %85 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %86 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = bitcast %struct.sockaddr_un* %4 to %struct.sockaddr*
  %89 = call i64 @connect(i32 %87, %struct.sockaddr* %88, i32 16)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %120

91:                                               ; preds = %74
  %92 = load i32, i32* @MSG_INFO, align 4
  %93 = load i32, i32* @errno, align 4
  %94 = call i32 @strerror(i32 %93)
  %95 = call i32 @wpa_printf(i32 %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @MSG_INFO, align 4
  %97 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i32*
  %100 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @os_strlen(i64 %101)
  %103 = call i32 @wpa_hexdump_ascii(i32 %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %99, i32 %102)
  %104 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %105 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @close(i32 %106)
  %108 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %109 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %108, i32 0, i32 0
  store i32 -1, i32* %109, align 8
  %110 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %111 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @unlink(i32* %112)
  %114 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %115 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @os_free(i32* %116)
  %118 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %119 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %118, i32 0, i32 1
  store i32* null, i32** %119, align 8
  store i32 -1, i32* %2, align 4
  br label %127

120:                                              ; preds = %74
  %121 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %122 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @eap_sim_db_receive, align 4
  %125 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %126 = call i32 @eloop_register_read_sock(i32 %123, i32 %124, %struct.eap_sim_db_data* %125, i32* null)
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %120, %91, %63, %49, %21, %10
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i64 @os_strncmp(i64, i8*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @os_memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @os_snprintf(i64, i32, i8*, i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_strdup(i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @os_strlcpy(i64, i64, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #1

declare dso_local i32 @os_strlen(i64) #1

declare dso_local i32 @unlink(i32*) #1

declare dso_local i32 @eloop_register_read_sock(i32, i32, %struct.eap_sim_db_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
