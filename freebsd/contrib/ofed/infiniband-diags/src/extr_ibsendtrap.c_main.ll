; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibsendtrap.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibsendtrap.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@IB_SMI_CLASS = common dso_local global i32 0, align 4
@IB_SMI_DIRECT_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"[<trap_name>] [<error_port>]\0A\0AArgument <trap_name> can be one of the following:\0A\00", align 1
@traps = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\0A  default behavior is to send \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DGKL\00", align 1
@optind = common dso_local global i64 0, align 8
@error_port = common dso_local global i32 0, align 4
@ibd_ca = common dso_local global i32 0, align 4
@ibd_ca_port = common dso_local global i32 0, align 4
@srcport = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to open '%s' port '%d'\00", align 1
@ibd_mkey = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [2 x i32], align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %13 = load i32, i32* @IB_SMI_CLASS, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @IB_SMI_DIRECT_CLASS, align 4
  store i32 %15, i32* %14, align 4
  store i8* null, i8** %8, align 8
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %17 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %52, %2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @traps, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %55

26:                                               ; preds = %18
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 1024, %32
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @traps, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @snprintf(i8* %30, i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp uge i64 %47, 1024
  br i1 %48, label %49, label %51

49:                                               ; preds = %26
  %50 = call i32 @exit(i32 -1) #3
  unreachable

51:                                               ; preds = %26
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %18

55:                                               ; preds = %18
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 1024, %61
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @traps, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @snprintf(i8* %59, i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* %4, align 4
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %72 = call i32 @ibdiag_process_opts(i32 %69, i8** %70, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* null, i8* %71, i32* null)
  %73 = load i64, i64* @optind, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %4, align 4
  %78 = load i64, i64* @optind, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 %78
  store i8** %80, i8*** %5, align 8
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %55
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  %88 = load i8*, i8** %87, align 8
  br label %94

89:                                               ; preds = %55
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @traps, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  br label %94

94:                                               ; preds = %89, %85
  %95 = phi i8* [ %88, %85 ], [ %93, %89 ]
  store i8* %95, i8** %8, align 8
  %96 = load i32, i32* %4, align 4
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @atoi(i8* %101)
  store i32 %102, i32* @error_port, align 4
  br label %103

103:                                              ; preds = %98, %94
  %104 = call i32 @madrpc_show_errors(i32 1)
  %105 = load i32, i32* @ibd_ca, align 4
  %106 = load i32, i32* @ibd_ca_port, align 4
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %108 = call i32 @mad_rpc_open_port(i32 %105, i32 %106, i32* %107, i32 2)
  store i32 %108, i32* @srcport, align 4
  %109 = load i32, i32* @srcport, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %103
  %112 = load i32, i32* @ibd_ca, align 4
  %113 = load i32, i32* @ibd_ca_port, align 4
  %114 = call i32 @IBEXIT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %103
  %116 = load i32, i32* @srcport, align 4
  %117 = load i32, i32* @ibd_mkey, align 4
  %118 = call i32 @smp_mkey_set(i32 %116, i32 %117)
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @process_send_trap(i8* %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* @srcport, align 4
  %122 = call i32 @mad_rpc_close_port(i32 %121)
  %123 = load i32, i32* %11, align 4
  ret i32 %123
}

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ibdiag_process_opts(i32, i8**, i32*, i8*, i32*, i32*, i8*, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @madrpc_show_errors(i32) #1

declare dso_local i32 @mad_rpc_open_port(i32, i32, i32*, i32) #1

declare dso_local i32 @IBEXIT(i8*, i32, i32) #1

declare dso_local i32 @smp_mkey_set(i32, i32) #1

declare dso_local i32 @process_send_trap(i8*) #1

declare dso_local i32 @mad_rpc_close_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
