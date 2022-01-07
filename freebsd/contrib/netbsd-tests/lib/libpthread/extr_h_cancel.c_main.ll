; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_h_cancel.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_h_cancel.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.str1 = private unnamed_addr constant [22 x i8] c"You should see this.\0A\00", align 16
@__const.main.str2 = private unnamed_addr constant [26 x i8] c"You should not see this.\0A\00", align 16
@PTHREAD_CANCEL_DISABLE = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@PTHREAD_CANCEL_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [22 x i8], align 16
  %3 = alloca [26 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = bitcast [22 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 getelementptr inbounds ([22 x i8], [22 x i8]* @__const.main.str1, i32 0, i32 0), i64 22, i1 false)
  %5 = bitcast [26 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([26 x i8], [26 x i8]* @__const.main.str2, i32 0, i32 0), i64 26, i1 false)
  %6 = call i32 (...) @pthread_self()
  %7 = call i32 @pthread_cancel(i32 %6)
  %8 = load i32, i32* @PTHREAD_CANCEL_DISABLE, align 4
  %9 = call i32 @pthread_setcancelstate(i32 %8, i32* null)
  %10 = load i32, i32* @STDOUT_FILENO, align 4
  %11 = getelementptr inbounds [22 x i8], [22 x i8]* %2, i64 0, i64 0
  %12 = call i32 @write(i32 %10, i8* %11, i32 21)
  %13 = load i32, i32* @PTHREAD_CANCEL_ENABLE, align 4
  %14 = call i32 @pthread_setcancelstate(i32 %13, i32* null)
  %15 = load i32, i32* @STDOUT_FILENO, align 4
  %16 = getelementptr inbounds [26 x i8], [26 x i8]* %3, i64 0, i64 0
  %17 = call i32 @write(i32 %15, i8* %16, i32 25)
  %18 = call i32 @exit(i32 1) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pthread_cancel(i32) #2

declare dso_local i32 @pthread_self(...) #2

declare dso_local i32 @pthread_setcancelstate(i32, i32*) #2

declare dso_local i32 @write(i32, i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
