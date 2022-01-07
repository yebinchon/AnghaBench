; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_read_peervars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_read_peervars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ctl_var = type { i32, i64 }
%struct.peer = type { i64 }

@CP_MAXCODE = common dso_local global i32 0, align 4
@res_associd = common dso_local global i32 0, align 4
@CERR_BADASSOC = common dso_local global i32 0, align 4
@rpkt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@res_authokay = common dso_local global i64 0, align 8
@peer_var = common dso_local global i32 0, align 4
@EOV = common dso_local global i32 0, align 4
@CERR_UNKNOWNVAR = common dso_local global i32 0, align 4
@def_peer_var = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_peervars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_peervars() #0 {
  %1 = alloca %struct.ctl_var*, align 8
  %2 = alloca %struct.peer*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @CP_MAXCODE, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @res_associd, align 4
  %16 = call %struct.peer* @findpeerbyassoc(i32 %15)
  store %struct.peer* %16, %struct.peer** %2, align 8
  %17 = load %struct.peer*, %struct.peer** %2, align 8
  %18 = icmp eq %struct.peer* null, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i32, i32* @CERR_BADASSOC, align 4
  %21 = call i32 @ctl_error(i32 %20)
  store i32 1, i32* %9, align 4
  br label %99

22:                                               ; preds = %0
  %23 = load %struct.peer*, %struct.peer** %2, align 8
  %24 = call i32 @ctlpeerstatus(%struct.peer* %23)
  %25 = call i32 @htons(i32 %24)
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpkt, i32 0, i32 0), align 4
  %26 = load i64, i64* @res_authokay, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.peer*, %struct.peer** %2, align 8
  %30 = getelementptr inbounds %struct.peer, %struct.peer* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %22
  %32 = call i32 @ZERO(i32* %14)
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %47, %31
  %34 = load i32, i32* @peer_var, align 4
  %35 = call %struct.ctl_var* @ctl_getitem(i32 %34, i8** %5)
  store %struct.ctl_var* %35, %struct.ctl_var** %1, align 8
  %36 = icmp ne %struct.ctl_var* null, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load %struct.ctl_var*, %struct.ctl_var** %1, align 8
  %39 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @EOV, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @CERR_UNKNOWNVAR, align 4
  %46 = call i32 @ctl_error(i32 %45)
  store i32 1, i32* %9, align 4
  br label %99

47:                                               ; preds = %37
  %48 = load %struct.ctl_var*, %struct.ctl_var** %1, align 8
  %49 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @COUNTOF(i32* %14)
  %52 = icmp ult i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @INSIST(i32 %53)
  %55 = load %struct.ctl_var*, %struct.ctl_var** %1, align 8
  %56 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %14, i64 %57
  store i32 1, i32* %58, align 4
  store i32 1, i32* %8, align 4
  br label %33

59:                                               ; preds = %33
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  store i64 1, i64* %4, align 8
  br label %63

63:                                               ; preds = %78, %62
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @COUNTOF(i32* %14)
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds i32, i32* %14, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i64, i64* %4, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.peer*, %struct.peer** %2, align 8
  %76 = call i32 @ctl_putpeer(i32 %74, %struct.peer* %75)
  br label %77

77:                                               ; preds = %72, %67
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %4, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %4, align 8
  br label %63

81:                                               ; preds = %63
  br label %97

82:                                               ; preds = %59
  %83 = load i32*, i32** @def_peer_var, align 8
  store i32* %83, i32** %3, align 8
  br label %84

84:                                               ; preds = %93, %82
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i32*, i32** %3, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.peer*, %struct.peer** %2, align 8
  %92 = call i32 @ctl_putpeer(i32 %90, %struct.peer* %91)
  br label %93

93:                                               ; preds = %88
  %94 = load i32*, i32** %3, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %3, align 8
  br label %84

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %81
  %98 = call i32 @ctl_flushpkt(i32 0)
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %97, %44, %19
  %100 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %9, align 4
  switch i32 %101, label %103 [
    i32 0, label %102
    i32 1, label %102
  ]

102:                                              ; preds = %99, %99
  ret void

103:                                              ; preds = %99
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.peer* @findpeerbyassoc(i32) #2

declare dso_local i32 @ctl_error(i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @ctlpeerstatus(%struct.peer*) #2

declare dso_local i32 @ZERO(i32*) #2

declare dso_local %struct.ctl_var* @ctl_getitem(i32, i8**) #2

declare dso_local i32 @INSIST(i32) #2

declare dso_local i64 @COUNTOF(i32*) #2

declare dso_local i32 @ctl_putpeer(i32, %struct.peer*) #2

declare dso_local i32 @ctl_flushpkt(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
