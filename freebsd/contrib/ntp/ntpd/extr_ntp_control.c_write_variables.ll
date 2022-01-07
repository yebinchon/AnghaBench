; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_write_variables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_write_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.recvbuf = type { i32 }
%struct.ctl_var = type { i32, i8* }

@res_associd = common dso_local global i64 0, align 8
@CERR_PERMISSION = common dso_local global i32 0, align 4
@rpkt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sys_var = common dso_local global i32 0, align 4
@EOV = common dso_local global i32 0, align 4
@ext_sys_var = common dso_local global i32 0, align 4
@CERR_UNKNOWNVAR = common dso_local global i32 0, align 4
@CAN_WRITE = common dso_local global i32 0, align 4
@CERR_BADFMT = common dso_local global i32 0, align 4
@LEAP_NOTINSYNC = common dso_local global i64 0, align 8
@CERR_BADVALUE = common dso_local global i32 0, align 4
@CERR_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.recvbuf*, i32)* @write_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_variables(%struct.recvbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.recvbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctl_var*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.recvbuf* %0, %struct.recvbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %8, align 8
  %13 = load i64, i64* @res_associd, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @CERR_PERMISSION, align 4
  %17 = call i32 @ctl_error(i32 %16)
  br label %153

18:                                               ; preds = %2
  %19 = call i32 (...) @ctlsysstatus()
  %20 = call i32 @htons(i32 %19)
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpkt, i32 0, i32 0), align 4
  br label %21

21:                                               ; preds = %150, %18
  %22 = load i32, i32* @sys_var, align 4
  %23 = call %struct.ctl_var* @ctl_getitem(i32 %22, i8** %7)
  store %struct.ctl_var* %23, %struct.ctl_var** %5, align 8
  %24 = icmp ne %struct.ctl_var* %23, null
  br i1 %24, label %25, label %151

25:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  %26 = load %struct.ctl_var*, %struct.ctl_var** %5, align 8
  %27 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @EOV, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %25
  %33 = load i32, i32* @ext_sys_var, align 4
  %34 = call %struct.ctl_var* @ctl_getitem(i32 %33, i8** %7)
  store %struct.ctl_var* %34, %struct.ctl_var** %5, align 8
  %35 = load %struct.ctl_var*, %struct.ctl_var** %5, align 8
  %36 = icmp ne %struct.ctl_var* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.ctl_var*, %struct.ctl_var** %5, align 8
  %39 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @EOV, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @CERR_UNKNOWNVAR, align 4
  %46 = call i32 @ctl_error(i32 %45)
  br label %153

47:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  br label %49

48:                                               ; preds = %32
  br label %151

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49, %25
  %51 = load %struct.ctl_var*, %struct.ctl_var** %5, align 8
  %52 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CAN_WRITE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @CERR_PERMISSION, align 4
  %59 = call i32 @ctl_error(i32 %58)
  br label %153

60:                                               ; preds = %50
  %61 = load i8*, i8** %7, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @CERR_BADFMT, align 4
  %65 = call i32 @ctl_error(i32 %64)
  br label %153

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %91, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i8*, i8** %7, align 8
  %76 = call i64 @atoint(i8* %75, i64* %8)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74, %69
  %79 = load i32, i32* @CERR_BADFMT, align 4
  %80 = call i32 @ctl_error(i32 %79)
  br label %153

81:                                               ; preds = %74
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @LEAP_NOTINSYNC, align 8
  %84 = xor i64 %83, -1
  %85 = and i64 %82, %84
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @CERR_BADVALUE, align 4
  %89 = call i32 @ctl_error(i32 %88)
  br label %153

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %66
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %147

94:                                               ; preds = %91
  %95 = load %struct.ctl_var*, %struct.ctl_var** %5, align 8
  %96 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @strlen(i8* %99)
  %101 = add nsw i32 %98, %100
  %102 = add nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %9, align 8
  %104 = load i64, i64* %9, align 8
  %105 = call i8* @emalloc(i64 %104)
  store i8* %105, i8** %10, align 8
  %106 = load i8*, i8** %10, align 8
  store i8* %106, i8** %12, align 8
  %107 = load %struct.ctl_var*, %struct.ctl_var** %5, align 8
  %108 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %11, align 8
  br label %110

110:                                              ; preds = %122, %94
  %111 = load i8*, i8** %11, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i8*, i8** %11, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 61
  br label %120

120:                                              ; preds = %115, %110
  %121 = phi i1 [ false, %110 ], [ %119, %115 ]
  br i1 %121, label %122, label %128

122:                                              ; preds = %120
  %123 = load i8*, i8** %11, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %11, align 8
  %125 = load i8, i8* %123, align 1
  %126 = load i8*, i8** %12, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %12, align 8
  store i8 %125, i8* %126, align 1
  br label %110

128:                                              ; preds = %120
  %129 = load i8*, i8** %12, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %12, align 8
  store i8 61, i8* %129, align 1
  %131 = load i8*, i8** %12, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 @strlen(i8* %133)
  %135 = add nsw i32 1, %134
  %136 = call i32 @memcpy(i8* %131, i8* %132, i32 %135)
  %137 = load i8*, i8** %10, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @strlen(i8* %138)
  %140 = add nsw i32 1, %139
  %141 = load %struct.ctl_var*, %struct.ctl_var** %5, align 8
  %142 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @set_sys_var(i8* %137, i32 %140, i32 %143)
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @free(i8* %145)
  br label %150

147:                                              ; preds = %91
  %148 = load i32, i32* @CERR_UNSPEC, align 4
  %149 = call i32 @ctl_error(i32 %148)
  br label %153

150:                                              ; preds = %128
  br label %21

151:                                              ; preds = %48, %21
  %152 = call i32 @ctl_flushpkt(i32 0)
  br label %153

153:                                              ; preds = %151, %147, %87, %78, %63, %57, %44, %15
  ret void
}

declare dso_local i32 @ctl_error(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ctlsysstatus(...) #1

declare dso_local %struct.ctl_var* @ctl_getitem(i32, i8**) #1

declare dso_local i64 @atoint(i8*, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @emalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @set_sys_var(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ctl_flushpkt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
