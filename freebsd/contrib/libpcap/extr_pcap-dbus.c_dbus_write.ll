; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dbus.c_dbus_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dbus.c_dbus_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.pcap_dbus* }
%struct.pcap_dbus = type { i32 }

@DBUS_ERROR_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"dbus_message_demarshal() failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i64)* @dbus_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbus_write(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pcap_dbus*, align 8
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.pcap_dbus*, %struct.pcap_dbus** %12, align 8
  store %struct.pcap_dbus* %13, %struct.pcap_dbus** %8, align 8
  %14 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_8__* @DBUS_ERROR_INIT to i8*), i64 4, i1 false)
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32* @dbus_message_demarshal(i8* %15, i64 %16, %struct.TYPE_8__* %9)
  store i32* %17, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pcap_snprintf(i32 %22, i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 @dbus_error_free(%struct.TYPE_8__* %9)
  store i32 -1, i32* %4, align 4
  br label %40

28:                                               ; preds = %3
  %29 = load %struct.pcap_dbus*, %struct.pcap_dbus** %8, align 8
  %30 = getelementptr inbounds %struct.pcap_dbus, %struct.pcap_dbus* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @dbus_connection_send(i32 %31, i32* %32, i32* null)
  %34 = load %struct.pcap_dbus*, %struct.pcap_dbus** %8, align 8
  %35 = getelementptr inbounds %struct.pcap_dbus, %struct.pcap_dbus* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dbus_connection_flush(i32 %36)
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @dbus_message_unref(i32* %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %28, %19
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @dbus_message_demarshal(i8*, i64, %struct.TYPE_8__*) #2

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, i32) #2

declare dso_local i32 @dbus_error_free(%struct.TYPE_8__*) #2

declare dso_local i32 @dbus_connection_send(i32, i32*, i32*) #2

declare dso_local i32 @dbus_connection_flush(i32) #2

declare dso_local i32 @dbus_message_unref(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
