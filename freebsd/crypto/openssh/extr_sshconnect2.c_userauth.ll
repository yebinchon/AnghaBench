; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_userauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_userauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.TYPE_8__ = type { i8*, i8*, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i64 (%struct.TYPE_8__*)*, i32*, i32, i32 (%struct.TYPE_8__*)* }

@active_state = common dso_local global %struct.ssh* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"%s@%s: Permission denied (%s).\00", align 1
@SSH2_MSG_USERAUTH_PER_METHOD_MIN = common dso_local global i32 0, align 4
@SSH2_MSG_USERAUTH_PER_METHOD_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"we sent a %s packet, wait for reply\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"we did not send a packet, disable method\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @userauth(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.ssh*, %struct.ssh** @active_state, align 8
  store %struct.ssh* %7, %struct.ssh** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %17 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %16, align 8
  %18 = icmp ne i32 (%struct.TYPE_8__*)* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %23, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = call i32 %24(%struct.TYPE_8__* %25)
  br label %27

27:                                               ; preds = %19, %12, %2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i8* null, i8** %33, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %4, align 8
  br label %48

40:                                               ; preds = %27
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %40, %36
  br label %49

49:                                               ; preds = %86, %48
  %50 = load i8*, i8** %4, align 8
  %51 = call %struct.TYPE_7__* @authmethod_get(i8* %50)
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %6, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = icmp eq %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60, i8* %61)
  br label %63

63:                                               ; preds = %54, %49
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %66, align 8
  %67 = load %struct.ssh*, %struct.ssh** %5, align 8
  %68 = load i32, i32* @SSH2_MSG_USERAUTH_PER_METHOD_MIN, align 4
  %69 = load i32, i32* @SSH2_MSG_USERAUTH_PER_METHOD_MAX, align 4
  %70 = call i32 @ssh_dispatch_range(%struct.ssh* %67, i32 %68, i32 %69, i32* null)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64 (%struct.TYPE_8__*)*, i64 (%struct.TYPE_8__*)** %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = call i64 %73(%struct.TYPE_8__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %63
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %87

82:                                               ; preds = %63
  %83 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %82
  br label %49

87:                                               ; preds = %77
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_7__* @authmethod_get(i8*) #1

declare dso_local i32 @fatal(i8*, i32, i32, i8*) #1

declare dso_local i32 @ssh_dispatch_range(%struct.ssh*, i32, i32, i32*) #1

declare dso_local i32 @debug2(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
