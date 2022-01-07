; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_acl_list_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_acl_list_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_list = type { i32, i32 }
%struct.config_file = type { i64 }
%struct.views = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"0.0.0.0/0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"refuse\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"127.0.0.0/8\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"allow\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"::0/0\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"::ffff:127.0.0.1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_list_apply_cfg(%struct.acl_list* %0, %struct.config_file* %1, %struct.views* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acl_list*, align 8
  %6 = alloca %struct.config_file*, align 8
  %7 = alloca %struct.views*, align 8
  store %struct.acl_list* %0, %struct.acl_list** %5, align 8
  store %struct.config_file* %1, %struct.config_file** %6, align 8
  store %struct.views* %2, %struct.views** %7, align 8
  %8 = load %struct.acl_list*, %struct.acl_list** %5, align 8
  %9 = getelementptr inbounds %struct.acl_list, %struct.acl_list* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @regional_free_all(i32 %10)
  %12 = load %struct.acl_list*, %struct.acl_list** %5, align 8
  %13 = getelementptr inbounds %struct.acl_list, %struct.acl_list* %12, i32 0, i32 0
  %14 = call i32 @addr_tree_init(i32* %13)
  %15 = load %struct.acl_list*, %struct.acl_list** %5, align 8
  %16 = load %struct.config_file*, %struct.config_file** %6, align 8
  %17 = call i32 @read_acl_list(%struct.acl_list* %15, %struct.config_file* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %80

20:                                               ; preds = %3
  %21 = load %struct.acl_list*, %struct.acl_list** %5, align 8
  %22 = load %struct.config_file*, %struct.config_file** %6, align 8
  %23 = load %struct.views*, %struct.views** %7, align 8
  %24 = call i32 @read_acl_view(%struct.acl_list* %21, %struct.config_file* %22, %struct.views* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %80

27:                                               ; preds = %20
  %28 = load %struct.acl_list*, %struct.acl_list** %5, align 8
  %29 = load %struct.config_file*, %struct.config_file** %6, align 8
  %30 = call i32 @read_acl_tags(%struct.acl_list* %28, %struct.config_file* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %80

33:                                               ; preds = %27
  %34 = load %struct.acl_list*, %struct.acl_list** %5, align 8
  %35 = load %struct.config_file*, %struct.config_file** %6, align 8
  %36 = call i32 @read_acl_tag_actions(%struct.acl_list* %34, %struct.config_file* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %80

39:                                               ; preds = %33
  %40 = load %struct.acl_list*, %struct.acl_list** %5, align 8
  %41 = load %struct.config_file*, %struct.config_file** %6, align 8
  %42 = call i32 @read_acl_tag_datas(%struct.acl_list* %40, %struct.config_file* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %80

45:                                               ; preds = %39
  %46 = load %struct.acl_list*, %struct.acl_list** %5, align 8
  %47 = call i32 @acl_list_str_cfg(%struct.acl_list* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %80

50:                                               ; preds = %45
  %51 = load %struct.acl_list*, %struct.acl_list** %5, align 8
  %52 = call i32 @acl_list_str_cfg(%struct.acl_list* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %80

55:                                               ; preds = %50
  %56 = load %struct.config_file*, %struct.config_file** %6, align 8
  %57 = getelementptr inbounds %struct.config_file, %struct.config_file* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load %struct.acl_list*, %struct.acl_list** %5, align 8
  %62 = call i32 @acl_list_str_cfg(%struct.acl_list* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %80

65:                                               ; preds = %60
  %66 = load %struct.acl_list*, %struct.acl_list** %5, align 8
  %67 = call i32 @acl_list_str_cfg(%struct.acl_list* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %80

70:                                               ; preds = %65
  %71 = load %struct.acl_list*, %struct.acl_list** %5, align 8
  %72 = call i32 @acl_list_str_cfg(%struct.acl_list* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %80

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %55
  %77 = load %struct.acl_list*, %struct.acl_list** %5, align 8
  %78 = getelementptr inbounds %struct.acl_list, %struct.acl_list* %77, i32 0, i32 0
  %79 = call i32 @addr_tree_init_parents(i32* %78)
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %74, %69, %64, %54, %49, %44, %38, %32, %26, %19
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @regional_free_all(i32) #1

declare dso_local i32 @addr_tree_init(i32*) #1

declare dso_local i32 @read_acl_list(%struct.acl_list*, %struct.config_file*) #1

declare dso_local i32 @read_acl_view(%struct.acl_list*, %struct.config_file*, %struct.views*) #1

declare dso_local i32 @read_acl_tags(%struct.acl_list*, %struct.config_file*) #1

declare dso_local i32 @read_acl_tag_actions(%struct.acl_list*, %struct.config_file*) #1

declare dso_local i32 @read_acl_tag_datas(%struct.acl_list*, %struct.config_file*) #1

declare dso_local i32 @acl_list_str_cfg(%struct.acl_list*, i8*, i8*, i32) #1

declare dso_local i32 @addr_tree_init_parents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
