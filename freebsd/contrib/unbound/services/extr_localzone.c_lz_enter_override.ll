; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_enter_override.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_enter_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zones = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.local_zone = type { i32, %struct.rbtree_type*, i32 }
%struct.rbtree_type = type { i32 }
%struct.local_zone_override = type { i32 }
%struct.addr_tree_node = type { i32 }

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"cannot parse zone name in local-zone-override: %s %s\00", align 1
@UNBOUND_DNS_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"cannot parse netblock in local-zone-override: %s %s\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"cannot parse type in local-zone-override: %s %s %s\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"no local-zone for local-zone-override %s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"duplicate local-zone-override %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.local_zones*, i8*, i8*, i8*, i32)* @lz_enter_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_enter_override(%struct.local_zones* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.local_zones*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_storage, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.local_zone*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.local_zone_override*, align 8
  store %struct.local_zones* %0, %struct.local_zones** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %28 = mul nuw i64 4, %25
  store i64 %28, i64* %14, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @sldns_str2wire_dname_buf(i8* %29, i32* %27, i64* %14)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %5
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %148

36:                                               ; preds = %5
  %37 = call i32 @dname_count_labels(i32* %27)
  store i32 %37, i32* %15, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %40 = call i32 @netblockstrtoaddr(i8* %38, i32 %39, %struct.sockaddr_storage* %16, i32* %18, i32* %17)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %44)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %148

46:                                               ; preds = %36
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @local_zone_str2type(i8* %47, i32* %20)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %51, i8* %52, i8* %53)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %148

55:                                               ; preds = %46
  %56 = load %struct.local_zones*, %struct.local_zones** %7, align 8
  %57 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %56, i32 0, i32 0
  %58 = call i32 @lock_rw_rdlock(i32* %57)
  %59 = load %struct.local_zones*, %struct.local_zones** %7, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call %struct.local_zone* @local_zones_find(%struct.local_zones* %59, i32* %27, i64 %60, i32 %61, i32 %62)
  store %struct.local_zone* %63, %struct.local_zone** %19, align 8
  %64 = load %struct.local_zone*, %struct.local_zone** %19, align 8
  %65 = icmp ne %struct.local_zone* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %55
  %67 = load %struct.local_zones*, %struct.local_zones** %7, align 8
  %68 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %67, i32 0, i32 0
  %69 = call i32 @lock_rw_unlock(i32* %68)
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %148

72:                                               ; preds = %55
  %73 = load %struct.local_zone*, %struct.local_zone** %19, align 8
  %74 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %73, i32 0, i32 0
  %75 = call i32 @lock_rw_wrlock(i32* %74)
  %76 = load %struct.local_zones*, %struct.local_zones** %7, align 8
  %77 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %76, i32 0, i32 0
  %78 = call i32 @lock_rw_unlock(i32* %77)
  %79 = load %struct.local_zone*, %struct.local_zone** %19, align 8
  %80 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %79, i32 0, i32 1
  %81 = load %struct.rbtree_type*, %struct.rbtree_type** %80, align 8
  %82 = icmp ne %struct.rbtree_type* %81, null
  br i1 %82, label %105, label %83

83:                                               ; preds = %72
  %84 = load %struct.local_zone*, %struct.local_zone** %19, align 8
  %85 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @regional_alloc_zero(i32 %86, i32 4)
  %88 = inttoptr i64 %87 to %struct.rbtree_type*
  %89 = load %struct.local_zone*, %struct.local_zone** %19, align 8
  %90 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %89, i32 0, i32 1
  store %struct.rbtree_type* %88, %struct.rbtree_type** %90, align 8
  %91 = load %struct.local_zone*, %struct.local_zone** %19, align 8
  %92 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %91, i32 0, i32 1
  %93 = load %struct.rbtree_type*, %struct.rbtree_type** %92, align 8
  %94 = icmp ne %struct.rbtree_type* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %83
  %96 = load %struct.local_zone*, %struct.local_zone** %19, align 8
  %97 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %96, i32 0, i32 0
  %98 = call i32 @lock_rw_unlock(i32* %97)
  %99 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %148

100:                                              ; preds = %83
  %101 = load %struct.local_zone*, %struct.local_zone** %19, align 8
  %102 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %101, i32 0, i32 1
  %103 = load %struct.rbtree_type*, %struct.rbtree_type** %102, align 8
  %104 = call i32 @addr_tree_init(%struct.rbtree_type* %103)
  br label %105

105:                                              ; preds = %100, %72
  %106 = load %struct.local_zone*, %struct.local_zone** %19, align 8
  %107 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %106, i32 0, i32 1
  %108 = load %struct.rbtree_type*, %struct.rbtree_type** %107, align 8
  %109 = icmp ne %struct.rbtree_type* %108, null
  br i1 %109, label %110, label %144

110:                                              ; preds = %105
  %111 = load %struct.local_zone*, %struct.local_zone** %19, align 8
  %112 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @regional_alloc_zero(i32 %113, i32 4)
  %115 = inttoptr i64 %114 to %struct.local_zone_override*
  store %struct.local_zone_override* %115, %struct.local_zone_override** %22, align 8
  %116 = load %struct.local_zone_override*, %struct.local_zone_override** %22, align 8
  %117 = icmp ne %struct.local_zone_override* %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %110
  %119 = load %struct.local_zone*, %struct.local_zone** %19, align 8
  %120 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %119, i32 0, i32 0
  %121 = call i32 @lock_rw_unlock(i32* %120)
  %122 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %148

123:                                              ; preds = %110
  %124 = load i32, i32* %20, align 4
  %125 = load %struct.local_zone_override*, %struct.local_zone_override** %22, align 8
  %126 = getelementptr inbounds %struct.local_zone_override, %struct.local_zone_override* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  %127 = load %struct.local_zone*, %struct.local_zone** %19, align 8
  %128 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %127, i32 0, i32 1
  %129 = load %struct.rbtree_type*, %struct.rbtree_type** %128, align 8
  %130 = load %struct.local_zone_override*, %struct.local_zone_override** %22, align 8
  %131 = bitcast %struct.local_zone_override* %130 to %struct.addr_tree_node*
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* %17, align 4
  %134 = call i32 @addr_tree_insert(%struct.rbtree_type* %129, %struct.addr_tree_node* %131, %struct.sockaddr_storage* %16, i32 %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %123
  %137 = load %struct.local_zone*, %struct.local_zone** %19, align 8
  %138 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %137, i32 0, i32 0
  %139 = call i32 @lock_rw_unlock(i32* %138)
  %140 = load i8*, i8** %8, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %140, i8* %141)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %148

143:                                              ; preds = %123
  br label %144

144:                                              ; preds = %143, %105
  %145 = load %struct.local_zone*, %struct.local_zone** %19, align 8
  %146 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %145, i32 0, i32 0
  %147 = call i32 @lock_rw_unlock(i32* %146)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %148

148:                                              ; preds = %144, %136, %118, %95, %66, %50, %42, %32
  %149 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sldns_str2wire_dname_buf(i8*, i32*, i64*) #2

declare dso_local i32 @log_err(i8*, ...) #2

declare dso_local i32 @dname_count_labels(i32*) #2

declare dso_local i32 @netblockstrtoaddr(i8*, i32, %struct.sockaddr_storage*, i32*, i32*) #2

declare dso_local i32 @local_zone_str2type(i8*, i32*) #2

declare dso_local i32 @lock_rw_rdlock(i32*) #2

declare dso_local %struct.local_zone* @local_zones_find(%struct.local_zones*, i32*, i64, i32, i32) #2

declare dso_local i32 @lock_rw_unlock(i32*) #2

declare dso_local i32 @lock_rw_wrlock(i32*) #2

declare dso_local i64 @regional_alloc_zero(i32, i32) #2

declare dso_local i32 @addr_tree_init(%struct.rbtree_type*) #2

declare dso_local i32 @addr_tree_insert(%struct.rbtree_type*, %struct.addr_tree_node*, %struct.sockaddr_storage*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
