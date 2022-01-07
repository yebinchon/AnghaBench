; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nb.c_nb_ctx_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nb.c_nb_ctx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nb_ctx = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NMB_TCP_PORT = common dso_local global i32 0, align 4
@SMB_TCP_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nb_ctx_create(%struct.nb_ctx** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nb_ctx**, align 8
  %4 = alloca %struct.nb_ctx*, align 8
  store %struct.nb_ctx** %0, %struct.nb_ctx*** %3, align 8
  %5 = call %struct.nb_ctx* @malloc(i32 8)
  store %struct.nb_ctx* %5, %struct.nb_ctx** %4, align 8
  %6 = load %struct.nb_ctx*, %struct.nb_ctx** %4, align 8
  %7 = icmp eq %struct.nb_ctx* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  store i32 %9, i32* %2, align 4
  br label %21

10:                                               ; preds = %1
  %11 = load %struct.nb_ctx*, %struct.nb_ctx** %4, align 8
  %12 = call i32 @bzero(%struct.nb_ctx* %11, i32 8)
  %13 = load i32, i32* @NMB_TCP_PORT, align 4
  %14 = load %struct.nb_ctx*, %struct.nb_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @SMB_TCP_PORT, align 4
  %17 = load %struct.nb_ctx*, %struct.nb_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.nb_ctx*, %struct.nb_ctx** %4, align 8
  %20 = load %struct.nb_ctx**, %struct.nb_ctx*** %3, align 8
  store %struct.nb_ctx* %19, %struct.nb_ctx** %20, align 8
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %10, %8
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.nb_ctx* @malloc(i32) #1

declare dso_local i32 @bzero(%struct.nb_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
