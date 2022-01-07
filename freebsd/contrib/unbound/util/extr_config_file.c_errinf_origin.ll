; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_errinf_origin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_errinf_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sock_list = type { i64, i32, %struct.sock_list* }

@.str = private unnamed_addr constant [6 x i8] c"from \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"and \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cache\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @errinf_origin(%struct.module_qstate* %0, %struct.sock_list* %1) #0 {
  %3 = alloca %struct.module_qstate*, align 8
  %4 = alloca %struct.sock_list*, align 8
  %5 = alloca %struct.sock_list*, align 8
  %6 = alloca [256 x i8], align 16
  store %struct.module_qstate* %0, %struct.module_qstate** %3, align 8
  store %struct.sock_list* %1, %struct.sock_list** %4, align 8
  %7 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %8 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %17 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %82

25:                                               ; preds = %15, %2
  %26 = load %struct.sock_list*, %struct.sock_list** %4, align 8
  store %struct.sock_list* %26, %struct.sock_list** %5, align 8
  br label %27

27:                                               ; preds = %78, %25
  %28 = load %struct.sock_list*, %struct.sock_list** %5, align 8
  %29 = icmp ne %struct.sock_list* %28, null
  br i1 %29, label %30, label %82

30:                                               ; preds = %27
  %31 = load %struct.sock_list*, %struct.sock_list** %5, align 8
  %32 = load %struct.sock_list*, %struct.sock_list** %4, align 8
  %33 = icmp eq %struct.sock_list* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %36 = call i32 @snprintf(i8* %35, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %40

37:                                               ; preds = %30
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %39 = call i32 @snprintf(i8* %38, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.sock_list*, %struct.sock_list** %5, align 8
  %42 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %48 = call i32 @strlen(i8* %47)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %52 = call i32 @strlen(i8* %51)
  %53 = sext i32 %52 to i64
  %54 = sub i64 256, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @snprintf(i8* %50, i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %74

57:                                               ; preds = %40
  %58 = load %struct.sock_list*, %struct.sock_list** %5, align 8
  %59 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %58, i32 0, i32 1
  %60 = load %struct.sock_list*, %struct.sock_list** %5, align 8
  %61 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %65 = call i32 @strlen(i8* %64)
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %69 = call i32 @strlen(i8* %68)
  %70 = sext i32 %69 to i64
  %71 = sub i64 256, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @addr_to_str(i32* %59, i64 %62, i8* %67, i32 %72)
  br label %74

74:                                               ; preds = %57, %45
  %75 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %77 = call i32 @errinf(%struct.module_qstate* %75, i8* %76)
  br label %78

78:                                               ; preds = %74
  %79 = load %struct.sock_list*, %struct.sock_list** %5, align 8
  %80 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %79, i32 0, i32 2
  %81 = load %struct.sock_list*, %struct.sock_list** %80, align 8
  store %struct.sock_list* %81, %struct.sock_list** %5, align 8
  br label %27

82:                                               ; preds = %24, %27
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @addr_to_str(i32*, i64, i8*, i32) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
