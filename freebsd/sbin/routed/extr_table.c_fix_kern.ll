; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_fix_kern.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_fix_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.khash = type { i32, i64, %struct.khash* }
%struct.TYPE_2__ = type { i64 }

@age_timer = common dso_local global i32 0, align 4
@need_kern = common dso_local global i32 0, align 4
@rhead = common dso_local global i32 0, align 4
@walk_kern = common dso_local global i32 0, align 4
@kern_out = common dso_local global i32 0, align 4
@KHASH_SIZE = common dso_local global i32 0, align 4
@khash_bins = common dso_local global %struct.khash** null, align 8
@KS_STATIC = common dso_local global i32 0, align 4
@now = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@KS_DELETE = common dso_local global i32 0, align 4
@KS_DYNAMIC = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@KS_DEL_ADD = common dso_local global i32 0, align 4
@KS_ADD = common dso_local global i32 0, align 4
@RTM_ADD = common dso_local global i32 0, align 4
@KS_GATEWAY = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@KS_CHANGE = common dso_local global i32 0, align 4
@RTM_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fix_kern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_kern() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.khash*, align 8
  %3 = alloca %struct.khash**, align 8
  %4 = load i32, i32* @age_timer, align 4
  store i32 %4, i32* @need_kern, align 4
  %5 = load i32, i32* @rhead, align 4
  %6 = load i32, i32* @walk_kern, align 4
  %7 = call i32 @rn_walktree(i32 %5, i32 %6, i32 0)
  %8 = load i32, i32* @kern_out, align 4
  %9 = call i32 @ag_flush(i32 0, i32 0, i32 %8)
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %157, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @KHASH_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %160

14:                                               ; preds = %10
  %15 = load %struct.khash**, %struct.khash*** @khash_bins, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.khash*, %struct.khash** %15, i64 %17
  store %struct.khash** %18, %struct.khash*** %3, align 8
  br label %19

19:                                               ; preds = %138, %68, %41, %30, %14
  %20 = load %struct.khash**, %struct.khash*** %3, align 8
  %21 = load %struct.khash*, %struct.khash** %20, align 8
  store %struct.khash* %21, %struct.khash** %2, align 8
  %22 = icmp ne %struct.khash* %21, null
  br i1 %22, label %23, label %156

23:                                               ; preds = %19
  %24 = load %struct.khash*, %struct.khash** %2, align 8
  %25 = getelementptr inbounds %struct.khash, %struct.khash* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @KS_STATIC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.khash*, %struct.khash** %2, align 8
  %32 = call i32 @kern_check_static(%struct.khash* %31, i32 0)
  %33 = load %struct.khash*, %struct.khash** %2, align 8
  %34 = getelementptr inbounds %struct.khash, %struct.khash* %33, i32 0, i32 2
  store %struct.khash** %34, %struct.khash*** %3, align 8
  br label %19

35:                                               ; preds = %23
  %36 = load %struct.khash*, %struct.khash** %2, align 8
  %37 = getelementptr inbounds %struct.khash, %struct.khash* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @now, i32 0, i32 0), align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load i32, i32* @need_kern, align 4
  %43 = load %struct.khash*, %struct.khash** %2, align 8
  %44 = getelementptr inbounds %struct.khash, %struct.khash* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @LIM_SEC(i32 %42, i64 %45)
  %47 = load i32, i32* @KS_DELETE, align 4
  %48 = load %struct.khash*, %struct.khash** %2, align 8
  %49 = getelementptr inbounds %struct.khash, %struct.khash* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.khash*, %struct.khash** %2, align 8
  %53 = getelementptr inbounds %struct.khash, %struct.khash* %52, i32 0, i32 2
  store %struct.khash** %53, %struct.khash*** %3, align 8
  br label %19

54:                                               ; preds = %35
  %55 = load %struct.khash*, %struct.khash** %2, align 8
  %56 = getelementptr inbounds %struct.khash, %struct.khash* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @KS_DELETE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %54
  %62 = load %struct.khash*, %struct.khash** %2, align 8
  %63 = getelementptr inbounds %struct.khash, %struct.khash* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @KS_DYNAMIC, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %61
  %69 = load %struct.khash*, %struct.khash** %2, align 8
  %70 = load i32, i32* @RTM_DELETE, align 4
  %71 = call i32 @kern_ioctl(%struct.khash* %69, i32 %70, i32 0)
  %72 = load %struct.khash*, %struct.khash** %2, align 8
  %73 = getelementptr inbounds %struct.khash, %struct.khash* %72, i32 0, i32 2
  %74 = load %struct.khash*, %struct.khash** %73, align 8
  %75 = load %struct.khash**, %struct.khash*** %3, align 8
  store %struct.khash* %74, %struct.khash** %75, align 8
  %76 = load %struct.khash*, %struct.khash** %2, align 8
  %77 = call i32 @free(%struct.khash* %76)
  br label %19

78:                                               ; preds = %61, %54
  %79 = load %struct.khash*, %struct.khash** %2, align 8
  %80 = getelementptr inbounds %struct.khash, %struct.khash* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @KS_DEL_ADD, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load %struct.khash*, %struct.khash** %2, align 8
  %87 = load i32, i32* @RTM_DELETE, align 4
  %88 = call i32 @kern_ioctl(%struct.khash* %86, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %85, %78
  %90 = load %struct.khash*, %struct.khash** %2, align 8
  %91 = getelementptr inbounds %struct.khash, %struct.khash* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @KS_ADD, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %89
  %97 = load %struct.khash*, %struct.khash** %2, align 8
  %98 = load i32, i32* @RTM_ADD, align 4
  %99 = load %struct.khash*, %struct.khash** %2, align 8
  %100 = getelementptr inbounds %struct.khash, %struct.khash* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @KS_GATEWAY, align 4
  %103 = load i32, i32* @KS_DYNAMIC, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %101, %104
  %106 = icmp ne i32 0, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %96
  %108 = load i32, i32* @RTF_GATEWAY, align 4
  br label %110

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 0, %109 ]
  %112 = call i32 @kern_ioctl(%struct.khash* %97, i32 %98, i32 %111)
  br label %138

113:                                              ; preds = %89
  %114 = load %struct.khash*, %struct.khash** %2, align 8
  %115 = getelementptr inbounds %struct.khash, %struct.khash* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @KS_CHANGE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %113
  %121 = load %struct.khash*, %struct.khash** %2, align 8
  %122 = load i32, i32* @RTM_CHANGE, align 4
  %123 = load %struct.khash*, %struct.khash** %2, align 8
  %124 = getelementptr inbounds %struct.khash, %struct.khash* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @KS_GATEWAY, align 4
  %127 = load i32, i32* @KS_DYNAMIC, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %125, %128
  %130 = icmp ne i32 0, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %120
  %132 = load i32, i32* @RTF_GATEWAY, align 4
  br label %134

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133, %131
  %135 = phi i32 [ %132, %131 ], [ 0, %133 ]
  %136 = call i32 @kern_ioctl(%struct.khash* %121, i32 %122, i32 %135)
  br label %137

137:                                              ; preds = %134, %113
  br label %138

138:                                              ; preds = %137, %110
  %139 = load i32, i32* @KS_ADD, align 4
  %140 = load i32, i32* @KS_CHANGE, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @KS_DEL_ADD, align 4
  %143 = or i32 %141, %142
  %144 = xor i32 %143, -1
  %145 = load %struct.khash*, %struct.khash** %2, align 8
  %146 = getelementptr inbounds %struct.khash, %struct.khash* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* @KS_DELETE, align 4
  %150 = load %struct.khash*, %struct.khash** %2, align 8
  %151 = getelementptr inbounds %struct.khash, %struct.khash* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load %struct.khash*, %struct.khash** %2, align 8
  %155 = getelementptr inbounds %struct.khash, %struct.khash* %154, i32 0, i32 2
  store %struct.khash** %155, %struct.khash*** %3, align 8
  br label %19

156:                                              ; preds = %19
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %1, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %1, align 4
  br label %10

160:                                              ; preds = %10
  ret void
}

declare dso_local i32 @rn_walktree(i32, i32, i32) #1

declare dso_local i32 @ag_flush(i32, i32, i32) #1

declare dso_local i32 @kern_check_static(%struct.khash*, i32) #1

declare dso_local i32 @LIM_SEC(i32, i64) #1

declare dso_local i32 @kern_ioctl(%struct.khash*, i32, i32) #1

declare dso_local i32 @free(%struct.khash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
