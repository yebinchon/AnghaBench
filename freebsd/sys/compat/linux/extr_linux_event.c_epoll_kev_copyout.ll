; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_epoll_kev_copyout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_epoll_kev_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32 }
%struct.epoll_copyout_args = type { i32, i32, i32, i32 }
%struct.linux_pemuldata = type { %struct.epoll_emuldata* }
%struct.epoll_emuldata = type { i32, i32* }
%struct.epoll_event = type { i32 }

@M_EPOLL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"epoll proc emuldata not found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"epoll proc epolldata not found.\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"epoll user data vector is too small.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kevent*, i32)* @epoll_kev_copyout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epoll_kev_copyout(i8* %0, %struct.kevent* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kevent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.epoll_copyout_args*, align 8
  %8 = alloca %struct.linux_pemuldata*, align 8
  %9 = alloca %struct.epoll_emuldata*, align 8
  %10 = alloca %struct.epoll_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.kevent* %1, %struct.kevent** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.epoll_copyout_args*
  store %struct.epoll_copyout_args* %15, %struct.epoll_copyout_args** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @M_EPOLL, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.epoll_event* @malloc(i32 %19, i32 %20, i32 %23)
  store %struct.epoll_event* %24, %struct.epoll_event** %10, align 8
  %25 = load %struct.epoll_copyout_args*, %struct.epoll_copyout_args** %7, align 8
  %26 = getelementptr inbounds %struct.epoll_copyout_args, %struct.epoll_copyout_args* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.linux_pemuldata* @pem_find(i32 %27)
  store %struct.linux_pemuldata* %28, %struct.linux_pemuldata** %8, align 8
  %29 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %8, align 8
  %30 = icmp ne %struct.linux_pemuldata* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %8, align 8
  %34 = call i32 @LINUX_PEM_SLOCK(%struct.linux_pemuldata* %33)
  %35 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %8, align 8
  %36 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %35, i32 0, i32 0
  %37 = load %struct.epoll_emuldata*, %struct.epoll_emuldata** %36, align 8
  store %struct.epoll_emuldata* %37, %struct.epoll_emuldata** %9, align 8
  %38 = load %struct.epoll_emuldata*, %struct.epoll_emuldata** %9, align 8
  %39 = icmp ne %struct.epoll_emuldata* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @KASSERT(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %81, %3
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %42
  %47 = load %struct.kevent*, %struct.kevent** %5, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.kevent, %struct.kevent* %47, i64 %49
  %51 = load %struct.epoll_event*, %struct.epoll_event** %10, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %51, i64 %53
  %55 = call i32 @kevent_to_epoll(%struct.kevent* %50, %struct.epoll_event* %54)
  %56 = load %struct.kevent*, %struct.kevent** %5, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.kevent, %struct.kevent* %56, i64 %58
  %60 = getelementptr inbounds %struct.kevent, %struct.kevent* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.epoll_emuldata*, %struct.epoll_emuldata** %9, align 8
  %64 = getelementptr inbounds %struct.epoll_emuldata, %struct.epoll_emuldata* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sle i32 %62, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @KASSERT(i32 %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.epoll_emuldata*, %struct.epoll_emuldata** %9, align 8
  %70 = getelementptr inbounds %struct.epoll_emuldata, %struct.epoll_emuldata* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.epoll_event*, %struct.epoll_event** %10, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %76, i64 %78
  %80 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %79, i32 0, i32 0
  store i32 %75, i32* %80, align 4
  br label %81

81:                                               ; preds = %46
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %42

84:                                               ; preds = %42
  %85 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %8, align 8
  %86 = call i32 @LINUX_PEM_SUNLOCK(%struct.linux_pemuldata* %85)
  %87 = load %struct.epoll_event*, %struct.epoll_event** %10, align 8
  %88 = load %struct.epoll_copyout_args*, %struct.epoll_copyout_args** %7, align 8
  %89 = getelementptr inbounds %struct.epoll_copyout_args, %struct.epoll_copyout_args* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = call i32 @copyout(%struct.epoll_event* %87, i32 %90, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %84
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.epoll_copyout_args*, %struct.epoll_copyout_args** %7, align 8
  %101 = getelementptr inbounds %struct.epoll_copyout_args, %struct.epoll_copyout_args* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.epoll_copyout_args*, %struct.epoll_copyout_args** %7, align 8
  %106 = getelementptr inbounds %struct.epoll_copyout_args, %struct.epoll_copyout_args* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %119

109:                                              ; preds = %84
  %110 = load %struct.epoll_copyout_args*, %struct.epoll_copyout_args** %7, align 8
  %111 = getelementptr inbounds %struct.epoll_copyout_args, %struct.epoll_copyout_args* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.epoll_copyout_args*, %struct.epoll_copyout_args** %7, align 8
  %117 = getelementptr inbounds %struct.epoll_copyout_args, %struct.epoll_copyout_args* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %109
  br label %119

119:                                              ; preds = %118, %98
  %120 = load %struct.epoll_event*, %struct.epoll_event** %10, align 8
  %121 = load i32, i32* @M_EPOLL, align 4
  %122 = call i32 @free(%struct.epoll_event* %120, i32 %121)
  %123 = load i32, i32* %11, align 4
  ret i32 %123
}

declare dso_local %struct.epoll_event* @malloc(i32, i32, i32) #1

declare dso_local %struct.linux_pemuldata* @pem_find(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LINUX_PEM_SLOCK(%struct.linux_pemuldata*) #1

declare dso_local i32 @kevent_to_epoll(%struct.kevent*, %struct.epoll_event*) #1

declare dso_local i32 @LINUX_PEM_SUNLOCK(%struct.linux_pemuldata*) #1

declare dso_local i32 @copyout(%struct.epoll_event*, i32, i32) #1

declare dso_local i32 @free(%struct.epoll_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
