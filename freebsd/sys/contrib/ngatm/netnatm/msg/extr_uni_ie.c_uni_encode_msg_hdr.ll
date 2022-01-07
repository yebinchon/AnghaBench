; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_uni_encode_msg_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_uni_encode_msg_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i32, i32 }
%struct.uni_msghdr = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.unicx = type { i64 }

@PNNI_PROTO = common dso_local global i32 0, align 4
@UNI_PROTO = common dso_local global i32 0, align 4
@UNI_MSGACT_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uni_encode_msg_hdr(%struct.uni_msg* %0, %struct.uni_msghdr* %1, i32 %2, %struct.unicx* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uni_msg*, align 8
  %8 = alloca %struct.uni_msghdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.unicx*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.uni_msg* %0, %struct.uni_msg** %7, align 8
  store %struct.uni_msghdr* %1, %struct.uni_msghdr** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.unicx* %3, %struct.unicx** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.uni_msg*, %struct.uni_msg** %7, align 8
  %14 = call i32 @uni_msg_ensure(%struct.uni_msg* %13, i32 9)
  %15 = load %struct.uni_msg*, %struct.uni_msg** %7, align 8
  %16 = load %struct.unicx*, %struct.unicx** %10, align 8
  %17 = getelementptr inbounds %struct.unicx, %struct.unicx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @PNNI_PROTO, align 4
  br label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @UNI_PROTO, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @APP_BYTE(%struct.uni_msg* %15, i32 %25)
  %27 = load %struct.uni_msg*, %struct.uni_msg** %7, align 8
  %28 = call i32 @APP_BYTE(%struct.uni_msg* %27, i32 3)
  %29 = load %struct.uni_msghdr*, %struct.uni_msghdr** %8, align 8
  %30 = getelementptr inbounds %struct.uni_msghdr, %struct.uni_msghdr* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 8388608
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 -1, i32* %6, align 4
  br label %93

35:                                               ; preds = %24
  %36 = load %struct.uni_msg*, %struct.uni_msg** %7, align 8
  %37 = load %struct.uni_msghdr*, %struct.uni_msghdr** %8, align 8
  %38 = getelementptr inbounds %struct.uni_msghdr, %struct.uni_msghdr* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.uni_msghdr*, %struct.uni_msghdr** %8, align 8
  %42 = getelementptr inbounds %struct.uni_msghdr, %struct.uni_msghdr* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 8388608, i32 0
  %48 = or i32 %40, %47
  %49 = call i32 @APP_24BIT(%struct.uni_msg* %36, i32 %48)
  %50 = load %struct.uni_msg*, %struct.uni_msg** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @APP_BYTE(%struct.uni_msg* %50, i32 %51)
  store i32 128, i32* %12, align 4
  %53 = load %struct.uni_msghdr*, %struct.uni_msghdr** %8, align 8
  %54 = getelementptr inbounds %struct.uni_msghdr, %struct.uni_msghdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @UNI_MSGACT_DEFAULT, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %35
  %59 = load %struct.uni_msghdr*, %struct.uni_msghdr** %8, align 8
  %60 = getelementptr inbounds %struct.uni_msghdr, %struct.uni_msghdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 3
  %63 = or i32 16, %62
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %58, %35
  %67 = load %struct.unicx*, %struct.unicx** %10, align 8
  %68 = getelementptr inbounds %struct.unicx, %struct.unicx* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.uni_msghdr*, %struct.uni_msghdr** %8, align 8
  %73 = getelementptr inbounds %struct.uni_msghdr, %struct.uni_msghdr* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %12, align 4
  %78 = or i32 %77, 8
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %76, %71, %66
  %80 = load %struct.uni_msg*, %struct.uni_msg** %7, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @APP_BYTE(%struct.uni_msg* %80, i32 %81)
  %83 = load %struct.uni_msg*, %struct.uni_msg** %7, align 8
  %84 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.uni_msg*, %struct.uni_msg** %7, align 8
  %87 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %85, %88
  %90 = load i32*, i32** %11, align 8
  store i32 %89, i32* %90, align 4
  %91 = load %struct.uni_msg*, %struct.uni_msg** %7, align 8
  %92 = call i32 @APP_16BIT(%struct.uni_msg* %91, i32 0)
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %79, %34
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @uni_msg_ensure(%struct.uni_msg*, i32) #1

declare dso_local i32 @APP_BYTE(%struct.uni_msg*, i32) #1

declare dso_local i32 @APP_24BIT(%struct.uni_msg*, i32) #1

declare dso_local i32 @APP_16BIT(%struct.uni_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
