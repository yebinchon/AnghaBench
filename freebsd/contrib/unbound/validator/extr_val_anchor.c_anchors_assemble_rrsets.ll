; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchors_assemble_rrsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchors_assemble_rrsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_anchors = type { i32, %struct.trust_anchor*, i32 }
%struct.trust_anchor = type { i64, i64, i32, i32, i32, i32, i64 }

@RBTREE_NULL = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"warning: unsupported algorithm for trust anchor\00", align 1
@LDNS_RR_TYPE_DS = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [118 x i8] c"trust anchor %s has no supported algorithms, the anchor is ignored (check if you need to upgrade unbound and openssl)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.val_anchors*)* @anchors_assemble_rrsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anchors_assemble_rrsets(%struct.val_anchors* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.val_anchors*, align 8
  %4 = alloca %struct.trust_anchor*, align 8
  %5 = alloca %struct.trust_anchor*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [257 x i8], align 16
  store %struct.val_anchors* %0, %struct.val_anchors** %3, align 8
  %9 = load %struct.val_anchors*, %struct.val_anchors** %3, align 8
  %10 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %9, i32 0, i32 0
  %11 = call i32 @lock_basic_lock(i32* %10)
  %12 = load %struct.val_anchors*, %struct.val_anchors** %3, align 8
  %13 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @rbtree_first(i32 %14)
  %16 = inttoptr i64 %15 to %struct.trust_anchor*
  store %struct.trust_anchor* %16, %struct.trust_anchor** %4, align 8
  br label %17

17:                                               ; preds = %131, %126, %44, %1
  %18 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %19 = bitcast %struct.trust_anchor* %18 to i32*
  %20 = load i32*, i32** @RBTREE_NULL, align 8
  %21 = icmp ne i32* %19, %20
  br i1 %21, label %22, label %136

22:                                               ; preds = %17
  %23 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %24 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %23, i32 0, i32 3
  %25 = call i64 @rbtree_next(i32* %24)
  %26 = inttoptr i64 %25 to %struct.trust_anchor*
  store %struct.trust_anchor* %26, %struct.trust_anchor** %5, align 8
  %27 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %28 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %27, i32 0, i32 2
  %29 = call i32 @lock_basic_lock(i32* %28)
  %30 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %31 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %22
  %35 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %36 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %41 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39, %22
  %45 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %46 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %45, i32 0, i32 2
  %47 = call i32 @lock_basic_unlock(i32* %46)
  %48 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  store %struct.trust_anchor* %48, %struct.trust_anchor** %4, align 8
  br label %17

49:                                               ; preds = %39, %34
  %50 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %51 = call i32 @anchors_assemble(%struct.trust_anchor* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %56 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %55, i32 0, i32 2
  %57 = call i32 @lock_basic_unlock(i32* %56)
  %58 = load %struct.val_anchors*, %struct.val_anchors** %3, align 8
  %59 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %58, i32 0, i32 0
  %60 = call i32 @lock_basic_unlock(i32* %59)
  store i32 0, i32* %2, align 4
  br label %140

61:                                               ; preds = %49
  %62 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %63 = call i64 @anchors_ds_unsupported(%struct.trust_anchor* %62)
  store i64 %63, i64* %6, align 8
  %64 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %65 = call i64 @anchors_dnskey_unsupported(%struct.trust_anchor* %64)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %70 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %73 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %74 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @log_nametypeclass(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %68, %61
  %78 = load i64, i64* %7, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %82 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %85 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %86 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @log_nametypeclass(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %80, %77
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %92 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %131

95:                                               ; preds = %89
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %98 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %131

101:                                              ; preds = %95
  %102 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %103 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds [257 x i8], [257 x i8]* %8, i64 0, i64 0
  %106 = call i32 @dname_str(i32 %104, i8* %105)
  %107 = getelementptr inbounds [257 x i8], [257 x i8]* %8, i64 0, i64 0
  %108 = call i32 @log_warn(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.2, i64 0, i64 0), i8* %107)
  %109 = load %struct.val_anchors*, %struct.val_anchors** %3, align 8
  %110 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %113 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %112, i32 0, i32 3
  %114 = call i32 @rbtree_delete(i32 %111, i32* %113)
  %115 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %116 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %115, i32 0, i32 2
  %117 = call i32 @lock_basic_unlock(i32* %116)
  %118 = load %struct.val_anchors*, %struct.val_anchors** %3, align 8
  %119 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %118, i32 0, i32 1
  %120 = load %struct.trust_anchor*, %struct.trust_anchor** %119, align 8
  %121 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %122 = icmp eq %struct.trust_anchor* %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %101
  %124 = load %struct.val_anchors*, %struct.val_anchors** %3, align 8
  %125 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %124, i32 0, i32 1
  store %struct.trust_anchor* null, %struct.trust_anchor** %125, align 8
  br label %126

126:                                              ; preds = %123, %101
  %127 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %128 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %127, i32 0, i32 3
  %129 = call i32 @anchors_delfunc(i32* %128, i32* null)
  %130 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  store %struct.trust_anchor* %130, %struct.trust_anchor** %4, align 8
  br label %17

131:                                              ; preds = %95, %89
  %132 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %133 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %132, i32 0, i32 2
  %134 = call i32 @lock_basic_unlock(i32* %133)
  %135 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  store %struct.trust_anchor* %135, %struct.trust_anchor** %4, align 8
  br label %17

136:                                              ; preds = %17
  %137 = load %struct.val_anchors*, %struct.val_anchors** %3, align 8
  %138 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %137, i32 0, i32 0
  %139 = call i32 @lock_basic_unlock(i32* %138)
  store i32 1, i32* %2, align 4
  br label %140

140:                                              ; preds = %136, %53
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i64 @rbtree_first(i32) #1

declare dso_local i64 @rbtree_next(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @anchors_assemble(%struct.trust_anchor*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i64 @anchors_ds_unsupported(%struct.trust_anchor*) #1

declare dso_local i64 @anchors_dnskey_unsupported(%struct.trust_anchor*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dname_str(i32, i8*) #1

declare dso_local i32 @log_warn(i8*, i8*) #1

declare dso_local i32 @rbtree_delete(i32, i32*) #1

declare dso_local i32 @anchors_delfunc(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
