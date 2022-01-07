; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh_api.c_ssh_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh_api.c_ssh_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.key_entry = type { %struct.TYPE_2__*, i32, i32, i32 }

@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssh_free(%struct.ssh* %0) #0 {
  %2 = alloca %struct.ssh*, align 8
  %3 = alloca %struct.key_entry*, align 8
  store %struct.ssh* %0, %struct.ssh** %2, align 8
  %4 = load %struct.ssh*, %struct.ssh** %2, align 8
  %5 = call i32 @ssh_packet_close(%struct.ssh* %4)
  br label %6

6:                                                ; preds = %35, %1
  %7 = load %struct.ssh*, %struct.ssh** %2, align 8
  %8 = getelementptr inbounds %struct.ssh, %struct.ssh* %7, i32 0, i32 3
  %9 = call %struct.ssh* @TAILQ_FIRST(i32* %8)
  %10 = bitcast %struct.ssh* %9 to %struct.key_entry*
  store %struct.key_entry* %10, %struct.key_entry** %3, align 8
  %11 = icmp ne %struct.key_entry* %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %6
  %13 = load %struct.ssh*, %struct.ssh** %2, align 8
  %14 = getelementptr inbounds %struct.ssh, %struct.ssh* %13, i32 0, i32 3
  %15 = load %struct.key_entry*, %struct.key_entry** %3, align 8
  %16 = bitcast %struct.key_entry* %15 to %struct.ssh*
  %17 = load i32, i32* @next, align 4
  %18 = call i32 @TAILQ_REMOVE(i32* %14, %struct.ssh* %16, i32 %17)
  %19 = load %struct.ssh*, %struct.ssh** %2, align 8
  %20 = getelementptr inbounds %struct.ssh, %struct.ssh* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %12
  %24 = load %struct.ssh*, %struct.ssh** %2, align 8
  %25 = getelementptr inbounds %struct.ssh, %struct.ssh* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.key_entry*, %struct.key_entry** %3, align 8
  %32 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sshkey_free(i32 %33)
  br label %35

35:                                               ; preds = %30, %23, %12
  %36 = load %struct.key_entry*, %struct.key_entry** %3, align 8
  %37 = bitcast %struct.key_entry* %36 to %struct.ssh*
  %38 = call i32 @free(%struct.ssh* %37)
  br label %6

39:                                               ; preds = %6
  br label %40

40:                                               ; preds = %46, %39
  %41 = load %struct.ssh*, %struct.ssh** %2, align 8
  %42 = getelementptr inbounds %struct.ssh, %struct.ssh* %41, i32 0, i32 1
  %43 = call %struct.ssh* @TAILQ_FIRST(i32* %42)
  %44 = bitcast %struct.ssh* %43 to %struct.key_entry*
  store %struct.key_entry* %44, %struct.key_entry** %3, align 8
  %45 = icmp ne %struct.key_entry* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load %struct.ssh*, %struct.ssh** %2, align 8
  %48 = getelementptr inbounds %struct.ssh, %struct.ssh* %47, i32 0, i32 1
  %49 = load %struct.key_entry*, %struct.key_entry** %3, align 8
  %50 = bitcast %struct.key_entry* %49 to %struct.ssh*
  %51 = load i32, i32* @next, align 4
  %52 = call i32 @TAILQ_REMOVE(i32* %48, %struct.ssh* %50, i32 %51)
  %53 = load %struct.key_entry*, %struct.key_entry** %3, align 8
  %54 = bitcast %struct.key_entry* %53 to %struct.ssh*
  %55 = call i32 @free(%struct.ssh* %54)
  br label %40

56:                                               ; preds = %40
  %57 = load %struct.ssh*, %struct.ssh** %2, align 8
  %58 = getelementptr inbounds %struct.ssh, %struct.ssh* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = icmp ne %struct.TYPE_2__* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.ssh*, %struct.ssh** %2, align 8
  %63 = getelementptr inbounds %struct.ssh, %struct.ssh* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = call i32 @kex_free(%struct.TYPE_2__* %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.ssh*, %struct.ssh** %2, align 8
  %68 = call i32 @free(%struct.ssh* %67)
  ret void
}

declare dso_local i32 @ssh_packet_close(%struct.ssh*) #1

declare dso_local %struct.ssh* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ssh*, i32) #1

declare dso_local i32 @sshkey_free(i32) #1

declare dso_local i32 @free(%struct.ssh*) #1

declare dso_local i32 @kex_free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
