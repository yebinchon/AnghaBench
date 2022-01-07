; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_alloc_session_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_alloc_session_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, %struct.ssh*, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.session_state = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, %struct.session_state*, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ssh* @ssh_alloc_session_state() #0 {
  %1 = alloca %struct.ssh*, align 8
  %2 = alloca %struct.ssh*, align 8
  %3 = alloca %struct.session_state*, align 8
  store %struct.ssh* null, %struct.ssh** %2, align 8
  store %struct.session_state* null, %struct.session_state** %3, align 8
  %4 = call %struct.ssh* @calloc(i32 1, i32 96)
  store %struct.ssh* %4, %struct.ssh** %2, align 8
  %5 = icmp eq %struct.ssh* %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %0
  %7 = call %struct.ssh* @calloc(i32 1, i32 96)
  %8 = bitcast %struct.ssh* %7 to %struct.session_state*
  store %struct.session_state* %8, %struct.session_state** %3, align 8
  %9 = icmp eq %struct.session_state* %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = call i8* (...) @sshbuf_new()
  %12 = bitcast i8* %11 to i32*
  %13 = load %struct.session_state*, %struct.session_state** %3, align 8
  %14 = getelementptr inbounds %struct.session_state, %struct.session_state* %13, i32 0, i32 9
  store i32* %12, i32** %14, align 8
  %15 = icmp eq i32* %12, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %10
  %17 = call i8* (...) @sshbuf_new()
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.session_state*, %struct.session_state** %3, align 8
  %20 = getelementptr inbounds %struct.session_state, %struct.session_state* %19, i32 0, i32 8
  store i32* %18, i32** %20, align 8
  %21 = icmp eq i32* %18, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = call i8* (...) @sshbuf_new()
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.session_state*, %struct.session_state** %3, align 8
  %26 = getelementptr inbounds %struct.session_state, %struct.session_state* %25, i32 0, i32 6
  store i32* %24, i32** %26, align 8
  %27 = icmp eq i32* %24, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = call i8* (...) @sshbuf_new()
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.session_state*, %struct.session_state** %3, align 8
  %32 = getelementptr inbounds %struct.session_state, %struct.session_state* %31, i32 0, i32 7
  store i32* %30, i32** %32, align 8
  %33 = icmp eq i32* %30, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22, %16, %10, %6, %0
  br label %68

35:                                               ; preds = %28
  %36 = load %struct.session_state*, %struct.session_state** %3, align 8
  %37 = getelementptr inbounds %struct.session_state, %struct.session_state* %36, i32 0, i32 15
  %38 = call i32 @TAILQ_INIT(i32* %37)
  %39 = load %struct.ssh*, %struct.ssh** %2, align 8
  %40 = getelementptr inbounds %struct.ssh, %struct.ssh* %39, i32 0, i32 14
  %41 = call i32 @TAILQ_INIT(i32* %40)
  %42 = load %struct.ssh*, %struct.ssh** %2, align 8
  %43 = getelementptr inbounds %struct.ssh, %struct.ssh* %42, i32 0, i32 13
  %44 = call i32 @TAILQ_INIT(i32* %43)
  %45 = load %struct.session_state*, %struct.session_state** %3, align 8
  %46 = getelementptr inbounds %struct.session_state, %struct.session_state* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 8
  %47 = load %struct.session_state*, %struct.session_state** %3, align 8
  %48 = getelementptr inbounds %struct.session_state, %struct.session_state* %47, i32 0, i32 1
  store i32 -1, i32* %48, align 4
  %49 = load %struct.session_state*, %struct.session_state** %3, align 8
  %50 = getelementptr inbounds %struct.session_state, %struct.session_state* %49, i32 0, i32 2
  store i32 32768, i32* %50, align 8
  %51 = load %struct.session_state*, %struct.session_state** %3, align 8
  %52 = getelementptr inbounds %struct.session_state, %struct.session_state* %51, i32 0, i32 3
  store i32 -1, i32* %52, align 4
  %53 = load %struct.session_state*, %struct.session_state** %3, align 8
  %54 = getelementptr inbounds %struct.session_state, %struct.session_state* %53, i32 0, i32 11
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.session_state*, %struct.session_state** %3, align 8
  %57 = getelementptr inbounds %struct.session_state, %struct.session_state* %56, i32 0, i32 12
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.session_state*, %struct.session_state** %3, align 8
  %60 = getelementptr inbounds %struct.session_state, %struct.session_state* %59, i32 0, i32 4
  store i32 1, i32* %60, align 8
  %61 = load %struct.session_state*, %struct.session_state** %3, align 8
  %62 = getelementptr inbounds %struct.session_state, %struct.session_state* %61, i32 0, i32 5
  store i32 1, i32* %62, align 4
  %63 = load %struct.session_state*, %struct.session_state** %3, align 8
  %64 = bitcast %struct.session_state* %63 to %struct.ssh*
  %65 = load %struct.ssh*, %struct.ssh** %2, align 8
  %66 = getelementptr inbounds %struct.ssh, %struct.ssh* %65, i32 0, i32 10
  store %struct.ssh* %64, %struct.ssh** %66, align 8
  %67 = load %struct.ssh*, %struct.ssh** %2, align 8
  store %struct.ssh* %67, %struct.ssh** %1, align 8
  br label %94

68:                                               ; preds = %34
  %69 = load %struct.session_state*, %struct.session_state** %3, align 8
  %70 = icmp ne %struct.session_state* %69, null
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load %struct.session_state*, %struct.session_state** %3, align 8
  %73 = getelementptr inbounds %struct.session_state, %struct.session_state* %72, i32 0, i32 9
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @sshbuf_free(i32* %74)
  %76 = load %struct.session_state*, %struct.session_state** %3, align 8
  %77 = getelementptr inbounds %struct.session_state, %struct.session_state* %76, i32 0, i32 8
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @sshbuf_free(i32* %78)
  %80 = load %struct.session_state*, %struct.session_state** %3, align 8
  %81 = getelementptr inbounds %struct.session_state, %struct.session_state* %80, i32 0, i32 7
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @sshbuf_free(i32* %82)
  %84 = load %struct.session_state*, %struct.session_state** %3, align 8
  %85 = getelementptr inbounds %struct.session_state, %struct.session_state* %84, i32 0, i32 6
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @sshbuf_free(i32* %86)
  %88 = load %struct.session_state*, %struct.session_state** %3, align 8
  %89 = bitcast %struct.session_state* %88 to %struct.ssh*
  %90 = call i32 @free(%struct.ssh* %89)
  br label %91

91:                                               ; preds = %71, %68
  %92 = load %struct.ssh*, %struct.ssh** %2, align 8
  %93 = call i32 @free(%struct.ssh* %92)
  store %struct.ssh* null, %struct.ssh** %1, align 8
  br label %94

94:                                               ; preds = %91, %35
  %95 = load %struct.ssh*, %struct.ssh** %1, align 8
  ret %struct.ssh* %95
}

declare dso_local %struct.ssh* @calloc(i32, i32) #1

declare dso_local i8* @sshbuf_new(...) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @sshbuf_free(i32*) #1

declare dso_local i32 @free(%struct.ssh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
