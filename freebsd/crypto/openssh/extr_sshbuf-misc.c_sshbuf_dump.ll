; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-misc.c_sshbuf_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-misc.c_sshbuf_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"buffer %p len = %zu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sshbuf_dump(%struct.sshbuf* %0, i32* %1) #0 {
  %3 = alloca %struct.sshbuf*, align 8
  %4 = alloca i32*, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %7 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %8 = call i32 @sshbuf_len(%struct.sshbuf* %7)
  %9 = call i32 @fprintf(i32* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.sshbuf* %6, i32 %8)
  %10 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %11 = call i32 @sshbuf_ptr(%struct.sshbuf* %10)
  %12 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %13 = call i32 @sshbuf_len(%struct.sshbuf* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @sshbuf_dump_data(i32 %11, i32 %13, i32* %14)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, %struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_dump_data(i32, i32, i32*) #1

declare dso_local i32 @sshbuf_ptr(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
