; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh_api.c_ssh_add_hostkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh_api.c_ssh_add_hostkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sshkey = type { i32 }
%struct.key_entry = type { %struct.sshkey* }

@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_add_hostkey(%struct.ssh* %0, %struct.sshkey* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca %struct.sshkey*, align 8
  %6 = alloca %struct.sshkey*, align 8
  %7 = alloca %struct.key_entry*, align 8
  %8 = alloca %struct.key_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store %struct.sshkey* %1, %struct.sshkey** %5, align 8
  store %struct.sshkey* null, %struct.sshkey** %6, align 8
  store %struct.key_entry* null, %struct.key_entry** %7, align 8
  store %struct.key_entry* null, %struct.key_entry** %8, align 8
  %10 = load %struct.ssh*, %struct.ssh** %4, align 8
  %11 = getelementptr inbounds %struct.ssh, %struct.ssh* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %2
  %17 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %18 = call i32 @sshkey_from_private(%struct.sshkey* %17, %struct.sshkey** %6)
  store i32 %18, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %67

22:                                               ; preds = %16
  %23 = call %struct.key_entry* @malloc(i32 8)
  store %struct.key_entry* %23, %struct.key_entry** %7, align 8
  %24 = icmp eq %struct.key_entry* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = call %struct.key_entry* @malloc(i32 8)
  store %struct.key_entry* %26, %struct.key_entry** %8, align 8
  %27 = icmp eq %struct.key_entry* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25, %22
  %29 = load %struct.key_entry*, %struct.key_entry** %7, align 8
  %30 = call i32 @free(%struct.key_entry* %29)
  %31 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %32 = call i32 @sshkey_free(%struct.sshkey* %31)
  %33 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %33, i32* %3, align 4
  br label %67

34:                                               ; preds = %25
  %35 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %36 = load %struct.key_entry*, %struct.key_entry** %8, align 8
  %37 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %36, i32 0, i32 0
  store %struct.sshkey* %35, %struct.sshkey** %37, align 8
  %38 = load %struct.ssh*, %struct.ssh** %4, align 8
  %39 = getelementptr inbounds %struct.ssh, %struct.ssh* %38, i32 0, i32 1
  %40 = load %struct.key_entry*, %struct.key_entry** %8, align 8
  %41 = load i32, i32* @next, align 4
  %42 = call i32 @TAILQ_INSERT_TAIL(i32* %39, %struct.key_entry* %40, i32 %41)
  %43 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %44 = load %struct.key_entry*, %struct.key_entry** %7, align 8
  %45 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %44, i32 0, i32 0
  store %struct.sshkey* %43, %struct.sshkey** %45, align 8
  %46 = load %struct.ssh*, %struct.ssh** %4, align 8
  %47 = getelementptr inbounds %struct.ssh, %struct.ssh* %46, i32 0, i32 0
  %48 = load %struct.key_entry*, %struct.key_entry** %7, align 8
  %49 = load i32, i32* @next, align 4
  %50 = call i32 @TAILQ_INSERT_TAIL(i32* %47, %struct.key_entry* %48, i32 %49)
  store i32 0, i32* %9, align 4
  br label %65

51:                                               ; preds = %2
  %52 = call %struct.key_entry* @malloc(i32 8)
  store %struct.key_entry* %52, %struct.key_entry** %7, align 8
  %53 = icmp eq %struct.key_entry* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %55, i32* %3, align 4
  br label %67

56:                                               ; preds = %51
  %57 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %58 = load %struct.key_entry*, %struct.key_entry** %7, align 8
  %59 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %58, i32 0, i32 0
  store %struct.sshkey* %57, %struct.sshkey** %59, align 8
  %60 = load %struct.ssh*, %struct.ssh** %4, align 8
  %61 = getelementptr inbounds %struct.ssh, %struct.ssh* %60, i32 0, i32 0
  %62 = load %struct.key_entry*, %struct.key_entry** %7, align 8
  %63 = load i32, i32* @next, align 4
  %64 = call i32 @TAILQ_INSERT_TAIL(i32* %61, %struct.key_entry* %62, i32 %63)
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %56, %34
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %54, %28, %20
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @sshkey_from_private(%struct.sshkey*, %struct.sshkey**) #1

declare dso_local %struct.key_entry* @malloc(i32) #1

declare dso_local i32 @free(%struct.key_entry*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.key_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
