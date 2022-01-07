; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_sodump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_sodump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_dl = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s: link %s; \00", align 1
@stdout = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr*, i8*)* @sodump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sodump(%struct.sockaddr* %0, i8* %1) #0 {
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca i8*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %6 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %15 [
    i32 128, label %8
  ]

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %11 = bitcast %struct.sockaddr* %10 to i8*
  %12 = bitcast i8* %11 to %struct.sockaddr_dl*
  %13 = call i8* @link_ntoa(%struct.sockaddr_dl* %12)
  %14 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %13)
  br label %15

15:                                               ; preds = %2, %8
  %16 = load i32, i32* @stdout, align 4
  %17 = call i32 @fflush(i32 %16)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @link_ntoa(%struct.sockaddr_dl*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
