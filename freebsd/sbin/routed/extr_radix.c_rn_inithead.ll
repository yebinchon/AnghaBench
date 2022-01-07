; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_radix.c_rn_inithead.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_radix.c_rn_inithead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { %struct.radix_node*, i32, i32, i32, i32, i32, %struct.radix_node* }
%struct.radix_node = type { i32, i32, i32, %struct.radix_node*, %struct.radix_node*, %struct.radix_node* }

@.str = private unnamed_addr constant [12 x i8] c"rn_inithead\00", align 1
@rn_zeros = common dso_local global i32 0, align 4
@RNF_ROOT = common dso_local global i32 0, align 4
@RNF_ACTIVE = common dso_local global i32 0, align 4
@rn_ones = common dso_local global i32 0, align 4
@rn_addroute = common dso_local global i32 0, align 4
@rn_delete = common dso_local global i32 0, align 4
@rn_match = common dso_local global i32 0, align 4
@rn_lookup = common dso_local global i32 0, align 4
@rn_walktree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rn_inithead(%struct.radix_node_head** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radix_node_head**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.radix_node_head*, align 8
  %7 = alloca %struct.radix_node*, align 8
  %8 = alloca %struct.radix_node*, align 8
  %9 = alloca %struct.radix_node*, align 8
  store %struct.radix_node_head** %0, %struct.radix_node_head*** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.radix_node_head**, %struct.radix_node_head*** %4, align 8
  %11 = load %struct.radix_node_head*, %struct.radix_node_head** %10, align 8
  %12 = icmp ne %struct.radix_node_head* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %76

14:                                               ; preds = %2
  %15 = call i64 @rtmalloc(i32 40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = inttoptr i64 %15 to %struct.radix_node_head*
  store %struct.radix_node_head* %16, %struct.radix_node_head** %6, align 8
  %17 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %18 = call i32 @Bzero(%struct.radix_node_head* %17, i32 40)
  %19 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %20 = load %struct.radix_node_head**, %struct.radix_node_head*** %4, align 8
  store %struct.radix_node_head* %19, %struct.radix_node_head** %20, align 8
  %21 = load i32, i32* @rn_zeros, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %24 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %23, i32 0, i32 6
  %25 = load %struct.radix_node*, %struct.radix_node** %24, align 8
  %26 = call %struct.radix_node* @rn_newpair(i32 %21, i32 %22, %struct.radix_node* %25)
  store %struct.radix_node* %26, %struct.radix_node** %7, align 8
  %27 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %28 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %27, i32 0, i32 6
  %29 = load %struct.radix_node*, %struct.radix_node** %28, align 8
  %30 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %29, i64 2
  store %struct.radix_node* %30, %struct.radix_node** %9, align 8
  %31 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %32 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %33 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %32, i32 0, i32 5
  store %struct.radix_node* %31, %struct.radix_node** %33, align 8
  %34 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %35 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %36 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %35, i32 0, i32 4
  store %struct.radix_node* %34, %struct.radix_node** %36, align 8
  %37 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %38 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %37, i32 0, i32 3
  %39 = load %struct.radix_node*, %struct.radix_node** %38, align 8
  store %struct.radix_node* %39, %struct.radix_node** %8, align 8
  %40 = load i32, i32* @RNF_ROOT, align 4
  %41 = load i32, i32* @RNF_ACTIVE, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %44 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %46 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 -1, %47
  %49 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %50 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %52 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %53 = bitcast %struct.radix_node* %51 to i8*
  %54 = bitcast %struct.radix_node* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 40, i1 false)
  %55 = load i32, i32* @rn_ones, align 4
  %56 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %57 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @rn_addroute, align 4
  %59 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %60 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @rn_delete, align 4
  %62 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %63 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @rn_match, align 4
  %65 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %66 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @rn_lookup, align 4
  %68 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %69 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @rn_walktree, align 4
  %71 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %72 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %74 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %75 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %74, i32 0, i32 0
  store %struct.radix_node* %73, %struct.radix_node** %75, align 8
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %14, %13
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @rtmalloc(i32, i8*) #1

declare dso_local i32 @Bzero(%struct.radix_node_head*, i32) #1

declare dso_local %struct.radix_node* @rn_newpair(i32, i32, %struct.radix_node*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
