; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-server-main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-server-main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"No user found for uid %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.passwd*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @ssh_malloc_init()
  %8 = call i32 (...) @sanitise_stdfd()
  %9 = call i64 (...) @getuid()
  %10 = call %struct.passwd* @getpwuid(i64 %9)
  store %struct.passwd* %10, %struct.passwd** %6, align 8
  %11 = icmp eq %struct.passwd* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = call i64 (...) @getuid()
  %15 = trunc i64 %14 to i32
  %16 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 1, i32* %3, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = load %struct.passwd*, %struct.passwd** %6, align 8
  %21 = call i32 @sftp_server_main(i32 %18, i8** %19, %struct.passwd* %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @ssh_malloc_init(...) #1

declare dso_local i32 @sanitise_stdfd(...) #1

declare dso_local %struct.passwd* @getpwuid(i64) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @sftp_server_main(i32, i8**, %struct.passwd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
