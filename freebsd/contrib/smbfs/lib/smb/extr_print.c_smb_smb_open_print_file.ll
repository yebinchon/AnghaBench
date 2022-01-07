; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_print.c_smb_smb_open_print_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_print.c_smb_smb_open_print_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { i32 }
%struct.smb_rq = type { i32 }
%struct.mbdata = type { i32 }

@SMB_COM_OPEN_PRINT_FILE = common dso_local global i32 0, align 4
@SMB_DT_ASCII = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_smb_open_print_file(%struct.smb_ctx* %0, i32 %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.smb_rq*, align 8
  %13 = alloca %struct.mbdata*, align 8
  %14 = alloca i32, align 4
  store %struct.smb_ctx* %0, %struct.smb_ctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.smb_ctx*, %struct.smb_ctx** %7, align 8
  %16 = load i32, i32* @SMB_COM_OPEN_PRINT_FILE, align 4
  %17 = call i32 @smb_rq_init(%struct.smb_ctx* %15, i32 %16, i32 2, %struct.smb_rq** %12)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %6, align 4
  br label %53

22:                                               ; preds = %5
  %23 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %24 = call %struct.mbdata* @smb_rq_getrequest(%struct.smb_rq* %23)
  store %struct.mbdata* %24, %struct.mbdata** %13, align 8
  %25 = load %struct.mbdata*, %struct.mbdata** %13, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @mb_put_uint16le(%struct.mbdata* %25, i32 %26)
  %28 = load %struct.mbdata*, %struct.mbdata** %13, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @mb_put_uint16le(%struct.mbdata* %28, i32 %29)
  %31 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %32 = call i32 @smb_rq_wend(%struct.smb_rq* %31)
  %33 = load %struct.mbdata*, %struct.mbdata** %13, align 8
  %34 = load i32, i32* @SMB_DT_ASCII, align 4
  %35 = call i32 @mb_put_uint8(%struct.mbdata* %33, i32 %34)
  %36 = load %struct.mbdata*, %struct.mbdata** %13, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @smb_rq_dstring(%struct.mbdata* %36, i8* %37)
  %39 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %40 = call i32 @smb_rq_simple(%struct.smb_rq* %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %22
  %44 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %45 = call %struct.mbdata* @smb_rq_getreply(%struct.smb_rq* %44)
  store %struct.mbdata* %45, %struct.mbdata** %13, align 8
  %46 = load %struct.mbdata*, %struct.mbdata** %13, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @mb_get_uint16(%struct.mbdata* %46, i32* %47)
  br label %49

49:                                               ; preds = %43, %22
  %50 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %51 = call i32 @smb_rq_done(%struct.smb_rq* %50)
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %20
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @smb_rq_init(%struct.smb_ctx*, i32, i32, %struct.smb_rq**) #1

declare dso_local %struct.mbdata* @smb_rq_getrequest(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbdata*, i32) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint8(%struct.mbdata*, i32) #1

declare dso_local i32 @smb_rq_dstring(%struct.mbdata*, i8*) #1

declare dso_local i32 @smb_rq_simple(%struct.smb_rq*) #1

declare dso_local %struct.mbdata* @smb_rq_getreply(%struct.smb_rq*) #1

declare dso_local i32 @mb_get_uint16(%struct.mbdata*, i32*) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
