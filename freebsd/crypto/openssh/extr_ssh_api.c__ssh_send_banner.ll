; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh_api.c__ssh_send_banner.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh_api.c__ssh_send_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"SSH-2.0-%.100s\0D\0A\00", align 1
@SSH_VERSION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Local version string %.100s\00", align 1
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_ssh_send_banner(%struct.ssh* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %9 = load i8*, i8** @SSH_VERSION, align 8
  %10 = call i32 @snprintf(i8* %8, i32 256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load %struct.ssh*, %struct.ssh** %4, align 8
  %12 = call i32 @ssh_packet_get_output(%struct.ssh* %11)
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %15 = call i32 @strlen(i8* %14)
  %16 = call i32 @sshbuf_put(i32 %12, i8* %13, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %32

20:                                               ; preds = %2
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %22 = call i32 @chop(i8* %21)
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %24 = call i32 @debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %26 = call i8* @strdup(i8* %25)
  %27 = load i8**, i8*** %5, align 8
  store i8* %26, i8** %27, align 8
  %28 = icmp eq i8* %26, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %29, %18
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @sshbuf_put(i32, i8*, i32) #1

declare dso_local i32 @ssh_packet_get_output(%struct.ssh*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @chop(i8*) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
