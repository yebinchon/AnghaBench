; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_common.c_load_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_common.c_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sshbuf* @load_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshbuf*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %5, %struct.sshbuf** %4, align 8
  %6 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %5, i32* null)
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @test_data_file(i8* %7)
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @open(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = call i32 @ASSERT_INT_NE(i32 %10, i32 -1)
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %14 = call i32 @sshkey_load_file(i32 %12, %struct.sshbuf* %13)
  %15 = call i32 @ASSERT_INT_EQ(i32 %14, i32 0)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @close(i32 %16)
  %18 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  ret %struct.sshbuf* %18
}

declare dso_local i32 @ASSERT_PTR_NE(%struct.sshbuf*, i32*) #1

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @ASSERT_INT_NE(i32, i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @test_data_file(i8*) #1

declare dso_local i32 @ASSERT_INT_EQ(i32, i32) #1

declare dso_local i32 @sshkey_load_file(i32, %struct.sshbuf*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
