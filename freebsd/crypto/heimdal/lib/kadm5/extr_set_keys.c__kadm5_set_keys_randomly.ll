; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_set_keys.c__kadm5_set_keys_randomly.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_set_keys.c__kadm5_set_keys_randomly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_kadm5_set_keys_randomly(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, %struct.TYPE_21__** %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_21__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_21__** %2, %struct.TYPE_21__*** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @hdb_generate_key_set(i32 %18, i32 %21, %struct.TYPE_24__** %15, i64* %14, i32 1)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i64, i64* %11, align 8
  store i64 %26, i64* %5, align 8
  br label %204

27:                                               ; preds = %4
  %28 = load i64, i64* %14, align 8
  %29 = mul i64 %28, 4
  %30 = call %struct.TYPE_21__* @malloc(i64 %29)
  store %struct.TYPE_21__* %30, %struct.TYPE_21__** %10, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %32 = icmp eq %struct.TYPE_21__* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load i64, i64* @ENOMEM, align 8
  store i64 %34, i64* %11, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %14, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %40 = call i32 @_kadm5_free_keys(i32 %37, i64 %38, %struct.TYPE_24__* %39)
  %41 = load i64, i64* %11, align 8
  store i64 %41, i64* %5, align 8
  br label %204

42:                                               ; preds = %27
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %44 = load i64, i64* %14, align 8
  %45 = mul i64 %44, 4
  %46 = call i32 @memset(%struct.TYPE_21__* %43, i32 0, i64 %45)
  store i32 -1, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %47

47:                                               ; preds = %135, %42
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %14, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %138

51:                                               ; preds = %47
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %89

54:                                               ; preds = %51
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @is_des_key_p(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %54
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i64 %69
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i64 %72
  %74 = call i64 @krb5_copy_keyblock_contents(i32 %66, %struct.TYPE_21__* %70, %struct.TYPE_21__* %73)
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* %11, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  br label %139

78:                                               ; preds = %63
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %80 = load i64, i64* %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 4
  br label %119

89:                                               ; preds = %54, %51
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %94 = load i64, i64* %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %100 = load i64, i64* %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i64 %100
  %102 = call i64 @krb5_generate_random_keyblock(i32 %92, i32 %98, %struct.TYPE_21__* %101)
  store i64 %102, i64* %11, align 8
  %103 = load i64, i64* %11, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  br label %139

106:                                              ; preds = %89
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @is_des_key_p(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load i64, i64* %13, align 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %115, %106
  br label %119

119:                                              ; preds = %118, %78
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %124 = load i64, i64* %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i64 %124
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %127 = load i64, i64* %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = call i64 @krb5_copy_keyblock_contents(i32 %122, %struct.TYPE_21__* %125, %struct.TYPE_21__* %129)
  store i64 %130, i64* %11, align 8
  %131 = load i64, i64* %11, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %119
  br label %139

134:                                              ; preds = %119
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %13, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %13, align 8
  br label %47

138:                                              ; preds = %47
  br label %139

139:                                              ; preds = %138, %133, %105, %77
  %140 = load i64, i64* %11, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %168

142:                                              ; preds = %139
  store i64 0, i64* %13, align 8
  br label %143

143:                                              ; preds = %155, %142
  %144 = load i64, i64* %13, align 8
  %145 = load i64, i64* %14, align 8
  %146 = icmp ult i64 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %143
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %152 = load i64, i64* %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i64 %152
  %154 = call i32 @krb5_free_keyblock_contents(i32 %150, %struct.TYPE_21__* %153)
  br label %155

155:                                              ; preds = %147
  %156 = load i64, i64* %13, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %13, align 8
  br label %143

158:                                              ; preds = %143
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %160 = call i32 @free(%struct.TYPE_21__* %159)
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i64, i64* %14, align 8
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %166 = call i32 @_kadm5_free_keys(i32 %163, i64 %164, %struct.TYPE_24__* %165)
  %167 = load i64, i64* %11, align 8
  store i64 %167, i64* %5, align 8
  br label %204

168:                                              ; preds = %139
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %178, align 8
  %180 = call i32 @_kadm5_free_keys(i32 %171, i64 %175, %struct.TYPE_24__* %179)
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 1
  store %struct.TYPE_24__* %181, %struct.TYPE_24__** %184, align 8
  %185 = load i64, i64* %14, align 8
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 0
  store i64 %185, i64* %188, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %190 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %8, align 8
  store %struct.TYPE_21__* %189, %struct.TYPE_21__** %190, align 8
  %191 = load i64, i64* %14, align 8
  %192 = trunc i64 %191 to i32
  %193 = load i32*, i32** %9, align 8
  store i32 %192, i32* %193, align 4
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %198 = call i32 @hdb_entry_set_pw_change_time(i32 %196, %struct.TYPE_23__* %197, i32 0)
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %203 = call i32 @hdb_entry_clear_password(i32 %201, %struct.TYPE_23__* %202)
  store i64 0, i64* %5, align 8
  br label %204

204:                                              ; preds = %168, %158, %33, %25
  %205 = load i64, i64* %5, align 8
  ret i64 %205
}

declare dso_local i64 @hdb_generate_key_set(i32, i32, %struct.TYPE_24__**, i64*, i32) #1

declare dso_local %struct.TYPE_21__* @malloc(i64) #1

declare dso_local i32 @_kadm5_free_keys(i32, i64, %struct.TYPE_24__*) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i64) #1

declare dso_local i64 @is_des_key_p(i32) #1

declare dso_local i64 @krb5_copy_keyblock_contents(i32, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i64 @krb5_generate_random_keyblock(i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @free(%struct.TYPE_21__*) #1

declare dso_local i32 @hdb_entry_set_pw_change_time(i32, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @hdb_entry_clear_password(i32, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
