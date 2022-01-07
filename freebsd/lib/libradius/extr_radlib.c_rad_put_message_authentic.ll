; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_put_message_authentic.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_put_message_authentic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i64*, i64, i64 }

@.str = private unnamed_addr constant [81 x i8] c"Message Authenticator not supported, please recompile libradius with SSL support\00", align 1
@MD5_DIGEST_LENGTH = common dso_local global i32 0, align 4
@POS_CODE = common dso_local global i64 0, align 8
@RAD_ACCOUNTING_REQUEST = common dso_local global i64 0, align 8
@RAD_MESSAGE_AUTHENTIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rad_put_message_authentic(%struct.rad_handle* %0) #0 {
  %2 = alloca %struct.rad_handle*, align 8
  store %struct.rad_handle* %0, %struct.rad_handle** %2, align 8
  %3 = load %struct.rad_handle*, %struct.rad_handle** %2, align 8
  %4 = call i32 @generr(%struct.rad_handle* %3, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  ret i32 -1
}

declare dso_local i32 @generr(%struct.rad_handle*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
