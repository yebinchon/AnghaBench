; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_statcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_statcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [14 x i8] c"End of status\00", align 1
@NBBY = common dso_local global i32 0, align 4
@TYPE_A = common dso_local global i64 0, align 8
@TYPE_E = common dso_local global i64 0, align 8
@TYPE_L = common dso_local global i64 0, align 8
@askpasswd = common dso_local global i64 0, align 8
@bytesize = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@data_dest = common dso_local global %struct.sockaddr_in zeroinitializer, align 4
@form = common dso_local global i64 0, align 8
@formnames = common dso_local global i8** null, align 8
@guest = common dso_local global i64 0, align 8
@his_addr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@hostname = common dso_local global i32 0, align 4
@logged_in = common dso_local global i64 0, align 8
@mode = common dso_local global i64 0, align 8
@modenames = common dso_local global i8** null, align 8
@pasv_addr = common dso_local global %struct.sockaddr_in zeroinitializer, align 4
@pdata = common dso_local global i32 0, align 4
@pw = common dso_local global %struct.TYPE_3__* null, align 8
@remotehost = common dso_local global i8* null, align 8
@stru = common dso_local global i64 0, align 8
@strunames = common dso_local global i8** null, align 8
@type = common dso_local global i64 0, align 8
@typenames = common dso_local global i8** null, align 8
@usedefault = common dso_local global i64 0, align 8
@version = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @statcmd() #0 {
  %1 = call i32 @reply(i32 211, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @reply(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
