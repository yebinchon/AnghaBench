; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_format_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_format_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }
%struct.sshbuf = type { i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_format_text(%struct.sshkey* %0, %struct.sshbuf* %1) #0 {
  %3 = alloca %struct.sshkey*, align 8
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %3, align 8
  store %struct.sshbuf* %1, %struct.sshbuf** %4, align 8
  %7 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %7, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %8 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %9 = call i32 @sshkey_to_base64(%struct.sshkey* %8, i8** %6)
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %14 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %15 = call i32 @sshkey_ssh_name(%struct.sshkey* %14)
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @sshbuf_putf(%struct.sshbuf* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %16)
  store i32 %17, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %21

20:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %19, %11
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @free(i8* %22)
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @sshkey_to_base64(%struct.sshkey*, i8**) #1

declare dso_local i32 @sshbuf_putf(%struct.sshbuf*, i8*, i32, i8*) #1

declare dso_local i32 @sshkey_ssh_name(%struct.sshkey*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
