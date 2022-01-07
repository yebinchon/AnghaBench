; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_parse_create_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_parse_create_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { i32 }
%struct.alloc_cache = type { i32 }
%struct.query_info = type { i32 }
%struct.reply_info = type { i32 }
%struct.regional = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_create_msg(i32* %0, %struct.msg_parse* %1, %struct.alloc_cache* %2, %struct.query_info* %3, %struct.reply_info** %4, %struct.regional* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.msg_parse*, align 8
  %10 = alloca %struct.alloc_cache*, align 8
  %11 = alloca %struct.query_info*, align 8
  %12 = alloca %struct.reply_info**, align 8
  %13 = alloca %struct.regional*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.msg_parse* %1, %struct.msg_parse** %9, align 8
  store %struct.alloc_cache* %2, %struct.alloc_cache** %10, align 8
  store %struct.query_info* %3, %struct.query_info** %11, align 8
  store %struct.reply_info** %4, %struct.reply_info*** %12, align 8
  store %struct.regional* %5, %struct.regional** %13, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %6
  %17 = load %struct.msg_parse*, %struct.msg_parse** %9, align 8
  %18 = icmp ne %struct.msg_parse* %17, null
  br label %19

19:                                               ; preds = %16, %6
  %20 = phi i1 [ false, %6 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @log_assert(i32 %21)
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.msg_parse*, %struct.msg_parse** %9, align 8
  %25 = load %struct.query_info*, %struct.query_info** %11, align 8
  %26 = load %struct.regional*, %struct.regional** %13, align 8
  %27 = call i32 @parse_create_qinfo(i32* %23, %struct.msg_parse* %24, %struct.query_info* %25, %struct.regional* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %71

30:                                               ; preds = %19
  %31 = load %struct.msg_parse*, %struct.msg_parse** %9, align 8
  %32 = load %struct.reply_info**, %struct.reply_info*** %12, align 8
  %33 = load %struct.regional*, %struct.regional** %13, align 8
  %34 = call i32 @parse_create_repinfo(%struct.msg_parse* %31, %struct.reply_info** %32, %struct.regional* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %71

37:                                               ; preds = %30
  %38 = load %struct.reply_info**, %struct.reply_info*** %12, align 8
  %39 = load %struct.reply_info*, %struct.reply_info** %38, align 8
  %40 = load %struct.alloc_cache*, %struct.alloc_cache** %10, align 8
  %41 = load %struct.regional*, %struct.regional** %13, align 8
  %42 = call i32 @reply_info_alloc_rrset_keys(%struct.reply_info* %39, %struct.alloc_cache* %40, %struct.regional* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %37
  %45 = load %struct.regional*, %struct.regional** %13, align 8
  %46 = icmp ne %struct.regional* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load %struct.reply_info**, %struct.reply_info*** %12, align 8
  %49 = load %struct.reply_info*, %struct.reply_info** %48, align 8
  %50 = load %struct.alloc_cache*, %struct.alloc_cache** %10, align 8
  %51 = call i32 @reply_info_parsedelete(%struct.reply_info* %49, %struct.alloc_cache* %50)
  br label %52

52:                                               ; preds = %47, %44
  store i32 0, i32* %7, align 4
  br label %71

53:                                               ; preds = %37
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.msg_parse*, %struct.msg_parse** %9, align 8
  %56 = load %struct.reply_info**, %struct.reply_info*** %12, align 8
  %57 = load %struct.reply_info*, %struct.reply_info** %56, align 8
  %58 = load %struct.regional*, %struct.regional** %13, align 8
  %59 = call i32 @parse_copy_decompress(i32* %54, %struct.msg_parse* %55, %struct.reply_info* %57, %struct.regional* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %53
  %62 = load %struct.regional*, %struct.regional** %13, align 8
  %63 = icmp ne %struct.regional* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load %struct.reply_info**, %struct.reply_info*** %12, align 8
  %66 = load %struct.reply_info*, %struct.reply_info** %65, align 8
  %67 = load %struct.alloc_cache*, %struct.alloc_cache** %10, align 8
  %68 = call i32 @reply_info_parsedelete(%struct.reply_info* %66, %struct.alloc_cache* %67)
  br label %69

69:                                               ; preds = %64, %61
  store i32 0, i32* %7, align 4
  br label %71

70:                                               ; preds = %53
  store i32 1, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %69, %52, %36, %29
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @parse_create_qinfo(i32*, %struct.msg_parse*, %struct.query_info*, %struct.regional*) #1

declare dso_local i32 @parse_create_repinfo(%struct.msg_parse*, %struct.reply_info**, %struct.regional*) #1

declare dso_local i32 @reply_info_alloc_rrset_keys(%struct.reply_info*, %struct.alloc_cache*, %struct.regional*) #1

declare dso_local i32 @reply_info_parsedelete(%struct.reply_info*, %struct.alloc_cache*) #1

declare dso_local i32 @parse_copy_decompress(i32*, %struct.msg_parse*, %struct.reply_info*, %struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
