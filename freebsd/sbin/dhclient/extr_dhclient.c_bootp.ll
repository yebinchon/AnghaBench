; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_bootp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_bootp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet = type { i32, %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.iaddrlist* }
%struct.iaddrlist = type { i32, %struct.iaddrlist* }
%struct.TYPE_5__ = type { i64 }

@BOOTREPLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"BOOTREPLY from %s rejected.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bootp(%struct.packet* %0) #0 {
  %2 = alloca %struct.packet*, align 8
  %3 = alloca %struct.iaddrlist*, align 8
  store %struct.packet* %0, %struct.packet** %2, align 8
  %4 = load %struct.packet*, %struct.packet** %2, align 8
  %5 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 2
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BOOTREPLY, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.packet*, %struct.packet** %2, align 8
  %14 = getelementptr inbounds %struct.packet, %struct.packet* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.iaddrlist*, %struct.iaddrlist** %20, align 8
  store %struct.iaddrlist* %21, %struct.iaddrlist** %3, align 8
  br label %22

22:                                               ; preds = %41, %12
  %23 = load %struct.iaddrlist*, %struct.iaddrlist** %3, align 8
  %24 = icmp ne %struct.iaddrlist* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load %struct.packet*, %struct.packet** %2, align 8
  %27 = getelementptr inbounds %struct.packet, %struct.packet* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.iaddrlist*, %struct.iaddrlist** %3, align 8
  %30 = getelementptr inbounds %struct.iaddrlist, %struct.iaddrlist* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @addr_eq(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.iaddrlist*, %struct.iaddrlist** %3, align 8
  %36 = getelementptr inbounds %struct.iaddrlist, %struct.iaddrlist* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @piaddr(i32 %37)
  %39 = call i32 @note(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %48

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.iaddrlist*, %struct.iaddrlist** %3, align 8
  %43 = getelementptr inbounds %struct.iaddrlist, %struct.iaddrlist* %42, i32 0, i32 1
  %44 = load %struct.iaddrlist*, %struct.iaddrlist** %43, align 8
  store %struct.iaddrlist* %44, %struct.iaddrlist** %3, align 8
  br label %22

45:                                               ; preds = %22
  %46 = load %struct.packet*, %struct.packet** %2, align 8
  %47 = call i32 @dhcpoffer(%struct.packet* %46)
  br label %48

48:                                               ; preds = %45, %34, %11
  ret void
}

declare dso_local i64 @addr_eq(i32, i32) #1

declare dso_local i32 @note(i8*, i32) #1

declare dso_local i32 @piaddr(i32) #1

declare dso_local i32 @dhcpoffer(%struct.packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
