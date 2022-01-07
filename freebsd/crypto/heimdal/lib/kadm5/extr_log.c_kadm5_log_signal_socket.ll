; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_signal_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_signal_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@signal_mutex = common dso_local global i32 0, align 4
@default_signal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/signal\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"kdc\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"signal_socket\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kadm5_log_signal_socket(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @HEIMDAL_MUTEX_lock(i32* @signal_mutex)
  %4 = load i32, i32* @default_signal, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @hdb_db_dir(i32 %7)
  %9 = call i32 @asprintf(i32* @default_signal, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %6, %1
  %11 = call i32 @HEIMDAL_MUTEX_unlock(i32* @signal_mutex)
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @default_signal, align 4
  %14 = call i8* @krb5_config_get_string_default(i32 %12, i32* null, i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null)
  ret i8* %14
}

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @asprintf(i32*, i8*, i32) #1

declare dso_local i32 @hdb_db_dir(i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i8* @krb5_config_get_string_default(i32, i32*, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
