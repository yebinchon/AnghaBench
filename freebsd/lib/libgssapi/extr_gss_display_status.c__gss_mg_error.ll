; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_display_status.c__gss_mg_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_display_status.c__gss_mg_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_thread_ctx = type { %struct.TYPE_4__, %struct.TYPE_4__, i8*, i8*, i32* }
%struct.TYPE_4__ = type { i64, i32* }
%struct._gss_mech_switch = type { i32, i8* (i8**, i8*, i32, i32*, i8**, %struct.TYPE_4__*)* }

@last_error_context = common dso_local global %struct.mg_thread_ctx zeroinitializer, align 8
@GSS_C_GSS_CODE = common dso_local global i32 0, align 4
@GSS_C_MECH_CODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_gss_mg_error(%struct._gss_mech_switch* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct._gss_mech_switch*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mg_thread_ctx*, align 8
  store %struct._gss_mech_switch* %0, %struct._gss_mech_switch** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.mg_thread_ctx* @last_error_context, %struct.mg_thread_ctx** %10, align 8
  %11 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %12 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %11, i32 0, i32 1
  %13 = call i32 @gss_release_buffer(i8** %8, %struct.TYPE_4__* %12)
  %14 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %15 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %14, i32 0, i32 0
  %16 = call i32 @gss_release_buffer(i8** %8, %struct.TYPE_4__* %15)
  %17 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %18 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %17, i32 0, i32 0
  %19 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %20 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %19, i32 0, i32 4
  store i32* %18, i32** %20, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %23 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %26 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %28 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %27, i32 0, i32 1
  %29 = load i8* (i8**, i8*, i32, i32*, i8**, %struct.TYPE_4__*)*, i8* (i8**, i8*, i32, i32*, i8**, %struct.TYPE_4__*)** %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @GSS_C_GSS_CODE, align 4
  %32 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %33 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %32, i32 0, i32 0
  %34 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %35 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %34, i32 0, i32 1
  %36 = call i8* %29(i8** %8, i8* %30, i32 %31, i32* %33, i8** %9, %struct.TYPE_4__* %35)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @GSS_ERROR(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %3
  %41 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %42 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %45 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %40, %3
  %48 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %49 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %48, i32 0, i32 1
  %50 = load i8* (i8**, i8*, i32, i32*, i8**, %struct.TYPE_4__*)*, i8* (i8**, i8*, i32, i32*, i8**, %struct.TYPE_4__*)** %49, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* @GSS_C_MECH_CODE, align 4
  %53 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %54 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %53, i32 0, i32 0
  %55 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %56 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %55, i32 0, i32 0
  %57 = call i8* %50(i8** %8, i8* %51, i32 %52, i32* %54, i8** %9, %struct.TYPE_4__* %56)
  store i8* %57, i8** %7, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i64 @GSS_ERROR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %47
  %62 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %63 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  %65 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %66 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %61, %47
  ret void
}

declare dso_local i32 @gss_release_buffer(i8**, %struct.TYPE_4__*) #1

declare dso_local i64 @GSS_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
